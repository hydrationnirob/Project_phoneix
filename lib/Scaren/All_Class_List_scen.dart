import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phoenix_user/Scaren/CardForWeekClass/Monday.dart';
import 'package:phoenix_user/Scaren/CardForWeekClass/Tuesday.dart';
import 'package:phoenix_user/Scaren/CardForWeekClass/Wednesday.dart';
import '../Utiletis/reUseAble/Week_Card.dart';
import 'CardForWeekClass/Sunday.dart';
import 'CardForWeekClass/Thursday.dart';

class AllClassList extends StatefulWidget {
  const AllClassList({Key? key}) : super(key: key);

  @override
  State<AllClassList> createState() => _AllClassListState();
}

class _AllClassListState extends State<AllClassList> {



   int sundayDocumentCount=0;
   int mondayDocumentCount=0;
   int thursdayDocumentCount=0;
   int wednesdayDocumentCount=0;
   int tuesdayDocumentCount=0;

   // Make the variable nullable


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchTuesDayData();
    _fetchSundayData();
    _fetchMondayData();
    _fetchWednesdayData();
    _fetchThursdayData();



  }
  Future<QuerySnapshot<Map<String, dynamic>>> _fetchSundayData() async {
     final snapshot = await FirebaseFirestore.instance.collection('Sunday').get();
     // Store the document count in the variable
     setState(() {
       sundayDocumentCount = snapshot.size;
     });
     return snapshot;
   }
   Future<QuerySnapshot<Map<String, dynamic>>> _fetchMondayData() async {
     final snapshot = await FirebaseFirestore.instance.collection('Monday').get();
     // Store the document count in the variable
     setState(() {
       mondayDocumentCount = snapshot.size;
     });
     return snapshot;
   }


   Future<QuerySnapshot<Map<String, dynamic>>> _fetchTuesDayData() async {
     final snapshot = await FirebaseFirestore.instance.collection('Tuesday').get();
     // Store the document count in the variable
     setState(() {
       tuesdayDocumentCount = snapshot.size;
     });
     return snapshot;
   }

   Future<QuerySnapshot<Map<String, dynamic>>> _fetchWednesdayData() async {
     final snapshot = await FirebaseFirestore.instance.collection('Wednesday').get();
     // Store the document count in the variable
     setState(() {
       wednesdayDocumentCount = snapshot.size;
     });
     return snapshot;
   }

   Future<QuerySnapshot<Map<String, dynamic>>> _fetchThursdayData() async {
     final snapshot = await FirebaseFirestore.instance.collection('Thursday').get();
     // Store the document count in the variable
     setState(() {
       thursdayDocumentCount  = snapshot.size;
     });
     return snapshot;
   }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Class List'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            const Padding(
              padding: EdgeInsets.only(left: 10,bottom: 10),
              child: Text("Show All Class", style: TextStyle(fontSize: 20)),
            ),

                Container(
                    width: double.infinity,
                    height: 200,
                    child: Image.asset("images/banner.png", fit: BoxFit.cover,)
                ),

            InkWell(child: WCardmenu("Sunday", sundayDocumentCount), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SundayWeekClass();
              }));
            }),
            InkWell(child: WCardmenu("Monday", mondayDocumentCount), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MondayWeekClass();
              }));
            }),
            InkWell(child: WCardmenu("Tuesday", tuesdayDocumentCount), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TuesdayWeekClass();
              }));
            }),
            InkWell(child: WCardmenu("Wednesday", wednesdayDocumentCount), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const WednesdayWeekClass();
              }));
            }),
            InkWell(child: WCardmenu("Thursday", thursdayDocumentCount), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ThursdayWeekClass();
              }));
            }),
          ]),
        ));
  }
}
