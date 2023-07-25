import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget WCardmenu( String day, int Class) {
  return Card(
    elevation: 5,
      child: ListTile(
          leading: const Icon(FontAwesomeIcons.calendarCheck, color: Colors.red,),
          trailing: const Icon(FontAwesomeIcons.arrowRight, color: Colors.red),
          title: Text(day,style: const TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),),
          subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Chip(label: Text("Total Class $Class")),
              ]
          )
      )
  );
}




