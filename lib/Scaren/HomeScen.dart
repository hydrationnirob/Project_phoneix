import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import '../Utiletis/reUseAble/NoClassToday.dart';
import 'CardForHomePage/SundayCardForHomePage.dart';

class HomeScen extends StatefulWidget {
  const HomeScen({Key? key}) : super(key: key);

  @override
  State<HomeScen> createState() => _HomeScenState();
}

class _HomeScenState extends State<HomeScen> {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat.yMMMd().format(DateTime.now());
  String formattedMonthDay = DateFormat(DateFormat.ABBR_MONTH_DAY).format(DateTime.now()); // Jan 26
  String formattedWeekday = DateFormat(DateFormat.WEEKDAY).format(DateTime.now()); // Tuesday
  String formattedTime = DateFormat.jm().format(DateTime.now()); // 11:00 AM

  int TotalClassCount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TotalClassCountF();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> _TotalClassCountF() async {
    final snapshot = await FirebaseFirestore.instance.collection(formattedWeekday).get();
    // Store the document count in the variable
    setState(() {
      TotalClassCount = snapshot.size;
    });
    print('TotalClassCount: $TotalClassCount');
    return snapshot;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today\'s Class'),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: Text('Drawer'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Upcoming Classes : Tomorrow",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              ),
              Lottie.asset('images/animation_lkhbn33z.json'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Last Update: $formattedWeekday, $formattedTime",
                  style: const TextStyle(fontSize: 17, color: Colors.red),
                ),
              ),
              const SizedBox(height: 10),
                Padding(
                 padding: EdgeInsets.only(left: 8.0),
                 child: Chip(label: Text("Total Class $TotalClassCount")),
               ),

              const SizedBox(height: 5),
              //_________________________________________________________________
              if (formattedWeekday == "Saturday")
                const SundayCardForHomePage(collectionName: 'Sunday',),
              if (formattedWeekday == "Sunday")
                const SundayCardForHomePage(collectionName: 'Monday',),
              if (formattedWeekday == "Monday")
                const SundayCardForHomePage(collectionName: 'Tuesday',),
              if (formattedWeekday == "Tuesday")
                const SundayCardForHomePage(collectionName: 'Wednesday',),
              if (formattedWeekday == "Wednesday")
                const SundayCardForHomePage(collectionName: 'Thursday',),
              if (formattedWeekday == "Friday")
                const SundayCardForHomePage(collectionName: 'Sunday',),

              //____________________________________________________________________

             //  Add a fallback widget for other weekdays
              //if (!["Monday", "Tuesday", "Wednesday", "Sunday","Saturday"].contains(formattedWeekday))
              //  noClassToday(),
            ],
          ),
        ),
      ),
    );
  }

}
