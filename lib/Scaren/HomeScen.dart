import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:phoenix_user/Utiletis/reUseAble/DateTimeClass.dart';
import '../Utiletis/reUseAble/NoClassToday.dart';
import 'CardForHomePage/SundayCardForHomePage.dart';
import 'Drower.dart';

class HomeScen extends StatefulWidget {
  const HomeScen({Key? key}) : super(key: key);

  @override
  State<HomeScen> createState() => _HomeScenState();
}

class _HomeScenState extends State<HomeScen> {
  DateTimeClass dateTimeClass = DateTimeClass();

  int TotalClassCount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TotalClassCountF();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> _TotalClassCountF() async {
    final snapshot = await FirebaseFirestore.instance
        .collection(dateTimeClass.NextDayCount(1))
        .get();
    // Store the document count in the variable
    setState(() {
      TotalClassCount = snapshot.size;
    });

    return snapshot;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Day Class'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return  SizedBox(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Icon(Icons.info,color: Colors.red,),
                          const Text('Information',style: TextStyle(fontWeight: FontWeight.bold ),),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("The class routine has been updated after 12:00 AM, "
                                "and you can find the tomorrow's class schedule here. "
                                "If you want a specific class schedule, you can click on the button below.",style: TextStyle(
                              fontSize: 14,

                            ), textAlign: TextAlign.justify),),
                           ElevatedButton(onPressed: (){
                             Navigator.pop(context);
                           }, child: const Text("understood"))

                        ],
                      ),
                    ),
                  );
                },
              );

            }, icon: const Icon(Icons.info_outlined),
          )
        ]  ,
        centerTitle: true,
      ),
      drawer:  Drawer(
        child: Drower(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Upcoming Classes : ${dateTimeClass.getNextFormattedWeekday()}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Lottie.asset('images/animation_lkhbn33z.json'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Last Update: ${dateTimeClass.formattedWeekday}: ${dateTimeClass.formattedTime}",
                  style: const TextStyle(fontSize: 17, color: Colors.red),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Chip(label: Text("Total Class $TotalClassCount")),
              ),

              const SizedBox(height: 5),
              //_________________________________________________________________
              if (dateTimeClass.formattedWeekday == "Saturday")
                const SundayCardForHomePage(
                  collectionName: 'Sunday',
                ),
              if (dateTimeClass.formattedWeekday == "Sunday")
                const SundayCardForHomePage(
                  collectionName: 'Monday',
                ),
              if (dateTimeClass.formattedWeekday == "Monday")
                const SundayCardForHomePage(
                  collectionName: 'Tuesday',
                ),
              if (dateTimeClass.formattedWeekday == "Tuesday")
                const SundayCardForHomePage(
                  collectionName: 'Wednesday',
                ),
              if (dateTimeClass.formattedWeekday == "Wednesday")
                const SundayCardForHomePage(
                  collectionName: 'Thursday',
                ),

              //____________________________________________________________________

              //  Add a fallback widget for other weekdays
              if (!["Monday", "Tuesday", "Sunday", "Saturday", "Saturday"]
                  .contains(dateTimeClass.formattedWeekday))
                noClassToday(),
            ],
          ),
        ),
      ),
    );
  }
}
