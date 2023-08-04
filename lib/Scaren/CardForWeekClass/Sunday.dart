import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../Utiletis/reUseAble/HomePageCardWidget.dart';

class SundayWeekClass extends StatefulWidget {
  const SundayWeekClass({Key? key}) : super(key: key);

  @override
  State<SundayWeekClass> createState() => _SundayWeekClassState();
}

class _SundayWeekClassState extends State<SundayWeekClass> {
  late Future<QuerySnapshot<Map<String, dynamic>>> wednesdayData; // Make the variable nullable

  @override
  void initState() {
    super.initState();
    // Fetch data from Firestore
    wednesdayData = FirebaseFirestore.instance.collection('Sunday').orderBy("StartTime").get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: Lottie.asset('images/animation_lki1kf82.json', fit: BoxFit.cover,),
          ),
          const SizedBox(height: 80,),
          // Check if wednesdayData is null before using FutureBuilder
          FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
            future: wednesdayData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // Show a loader while data is being fetched.
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final documents = snapshot.data!.docs;
                return Expanded(
                  child: ListView.builder(
                    itemCount: documents.length,
                    itemBuilder: (context, index) {
                      final data = documents[index].data();
                      return HomePageCardWidget(
                        Icon(Icons.add_box, color: Colors.red),
                        data['Name'],
                        data['Room'],
                        data['StartTime'],
                        data['EndTime'],
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
