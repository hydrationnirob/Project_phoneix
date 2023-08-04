import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import 'DateTimeClass.dart';

Widget WCardmenu( String day, int Class , String Todate) {

  DateTimeClass dateTimeClass = DateTimeClass();
  return Card(
      child: ListTile(
          leading:  dateTimeClass.formattedWeekday == day ? Icon(Icons.download_done,color: Colors.red,) : Icon(Icons.next_plan_rounded,color: Colors.grey,),
          trailing:  Chip(label: Text("Total Class $Class",
          style:  TextStyle(color:
          dateTimeClass.formattedWeekday == day ? Colors.red : Colors.black
          ),)),
          title: Text(day,style: const TextStyle(fontSize: 25,),),
          subtitle: Text(Todate),
          tileColor: dateTimeClass.formattedWeekday == day ? Colors.red.shade100 : Colors.white

      )
  );
}




