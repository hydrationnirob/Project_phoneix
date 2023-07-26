import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:phoenix_user/WeekClassDetilsshow/Monday.dart';
import 'package:phoenix_user/WeekClassDetilsshow/Tuesday.dart';
import 'package:phoenix_user/WeekClassDetilsshow/Wednesday.dart';

import '../Utiletis/reUseAble/Week_Card.dart';
import '../WeekClassDetilsshow/Sunday.dart';
import '../WeekClassDetilsshow/Thursday.dart';

class AllClassList extends StatefulWidget {
  const AllClassList({Key? key}) : super(key: key);

  @override
  State<AllClassList> createState() => _AllClassListState();
}

class _AllClassListState extends State<AllClassList> {
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
                    height: 300,
                    child:
                Lottie.asset('images/animation_lkjf7jq4.json',)

                ),

            InkWell(child: WCardmenu("Sunday", 5), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CSunday();
              }));
            }),
            InkWell(child: WCardmenu("Monday", 5), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Cmonday();
              }));
            }),
            InkWell(child: WCardmenu("Tuesday", 5), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Ctuesday();
              }));
            }),
            InkWell(child: WCardmenu("Wednesday", 5), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Cwednesday();
              }));
            }),
            InkWell(child: WCardmenu("Thursday", 5), onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Cthursday();
              }));
            }),
          ]),
        ));
  }
}
