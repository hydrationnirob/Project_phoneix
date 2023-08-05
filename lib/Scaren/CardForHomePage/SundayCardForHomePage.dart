import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';
class SundayCardForHomePage extends StatefulWidget {
  final String collectionName;


   const SundayCardForHomePage({Key? key, required this.collectionName}) : super(key: key);

  @override
  State<SundayCardForHomePage> createState() => _SundayCardForHomePageState();
}

class _SundayCardForHomePageState extends State<SundayCardForHomePage> {
  late Future<List<ClassTime>> homePageData;

  @override
  void initState() {
    super.initState();
    // Fetch data from Firestore
    homePageData = _fetchHomePageData();
  }

  Future<List<ClassTime>> _fetchHomePageData() async {
    try {
      final snapshot = await FirebaseFirestore.instance.collection(widget.collectionName).orderBy("StartTime").get();
      final documents = snapshot.docs;
      final List<ClassTime> data = documents.map((doc) => ClassTime.fromSnapshot(doc)).toList();
      return data;
    } catch (e) {
      // Handle error gracefully, you can show a friendly message or retry option here.
      print('Error fetching data: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ClassTime>>(
      future: homePageData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return  const Center(child: GFLoader(type:GFLoaderType.ios),
          ); // Show a loader while data is being fetched.
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final data = snapshot.data ?? [];
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final classTime in data)
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(classTime.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          leading: classTime.timeImg,
                          trailing: Chip(label: Text("${classTime.startTime}-${classTime.endTime}"), labelStyle: const TextStyle(color: Colors.pink)),
                          subtitle: Text("Room ${classTime.room}"),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        }
      },
    );
  }

}

class ClassTime {
  final String title;
  final Widget timeImg;
  final String startTime;
  final String endTime;
  final String room;

  ClassTime({
    required this.title,
    required this.timeImg,
    required this.startTime,
    required this.endTime,
    required this.room,
  });

  factory ClassTime.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return ClassTime(
      title: data['Name'] ?? '',
      timeImg: const Icon(Icons.add_box,color: Colors.red,), // Replace Timeimg with the actual widget you want to use.
      startTime: data['StartTime'] ?? '',
      endTime: data['EndTime'] ?? '',
      room: data['Room'] ?? '',
    );
  }
}
