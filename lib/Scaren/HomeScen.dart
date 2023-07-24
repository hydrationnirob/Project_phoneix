import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../Utiletis/reUseAble/TodaylistCard.dart';
import '../Utiletis/reUseAble/Week_Class.dart';

class HomeScen extends StatefulWidget {
  const HomeScen({Key? key}) : super(key: key);

  @override
  State<HomeScen> createState() => _HomeScenState();
}

class _HomeScenState extends State<HomeScen> {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat.yMMMd().format(DateTime.now()); // Jan 26, 2021
  String formattedMonthDay = DateFormat(DateFormat.ABBR_MONTH_DAY).format(DateTime.now()); // Jan 26
  String formattedWeekday = DateFormat(DateFormat.WEEKDAY).format(DateTime.now()); // Tuesday
  String formattedTime = DateFormat.jm().format(DateTime.now()); // 11:00 AM

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Today\'s Class',
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: Text('Drawer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Today's Class",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 90,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Center(
                        child: Text(
                          "Total Class 30",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Expanded(
                    child: Container(
                      height: 90,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Center(
                        child: Text(
                          "Cancel Class 30",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Today: $formattedWeekday, $formattedTime",
              style: const TextStyle(fontSize: 22, color: Colors.red),
            ),
            const SizedBox(height: 20,),
            sunday(),

          ],
        ),
      ),


    );
  }
}
