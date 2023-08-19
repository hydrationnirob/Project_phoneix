import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_user/Utiletis/reUseAble/DatabaseCollection.dart';
import 'package:phoenix_user/Utiletis/reUseAble/DateTimeClass.dart';

import 'MainUi.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late Future<QuerySnapshot<Map<String, dynamic>>> chatData;

  DateTimeClass dateTimeClass = DateTimeClass();

  final TextEditingController _textController = TextEditingController();


  @override
  void initState() {
    super.initState();
    chatData = FirebaseFirestore.instance.collection(DatabaseCollection.Semester).doc(DatabaseCollection.Section).collection(DatabaseCollection.NoticeCollection).orderBy("Time",descending: true).get();
  }

  Widget _buildChatList() {
    return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
      future: chatData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('No data available');
        }

        final documents = snapshot.data!.docs;

        return ListView.builder(
          reverse: true,
          itemCount: documents.length,
          itemBuilder: (BuildContext context, int index) {
            final data = documents[index].data();

            return ChatMessage(
              notice: data['Notice'],
              title: data['Title'],
              time: data['Time'],
              date: data['Date'],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notice Board'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: _buildChatList(),
          ),
          const Divider(height: 1.0),

          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Center(child: _buildTextComposer()),
          ),
        ],

      ),

    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const Row(

        children: <Widget>[
          Flexible(
            child: TextField(
              readOnly: true,
              decoration: InputDecoration.collapsed(
                hintText: '                       Only Admin can send Notice',


              ),
            ),
          ),


        ],
      ),
    );
  }
}
