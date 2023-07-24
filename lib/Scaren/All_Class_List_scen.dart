import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Card.dart';
import '../WeekClassDetilsshow/Sunday.dart';

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
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const Padding(
            padding: EdgeInsets.only(left: 10,bottom: 10),
            child: Text("Show All Class", style: TextStyle(fontSize: 20)),
          ),
          InkWell(child: WCardmenu("Sunday", 5), onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Sunday();
            }));
          }),
          InkWell(child: WCardmenu("Monday", 5), onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Sunday();
            }));
          }),
          InkWell(child: WCardmenu("Tuesday", 5), onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Sunday();
            }));
          }),
          InkWell(child: WCardmenu("Wednesday", 5), onTap: () {}),
          InkWell(child: WCardmenu("Thursday", 5), onTap: () {}),
        ]));
  }
}
