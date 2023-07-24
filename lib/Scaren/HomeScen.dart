import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../Utiletis/reUseAble/Week_Widget.dart';

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
            Lottie.asset('images/animation_lkhbn33z.json'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Today: $formattedWeekday, $formattedTime",
                style: const TextStyle(fontSize: 22, color: Colors.red),
              ),
            ),
            const SizedBox(height: 20,),
            if (formattedWeekday == "Monday")
              monday(),
            if (formattedWeekday == "Tuesday")
              Tuesday(),
            if (formattedWeekday == "Wednesday")
              Wednesday(),
            if (formattedWeekday == "Thursday")
              Thursday(),
            if (formattedWeekday == "Sunday")
              sunday(),

          ],
        ),
      ),


    );
  }
}
