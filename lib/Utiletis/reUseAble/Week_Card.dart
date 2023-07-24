import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget WCardmenu( String day, int Class) {
  return Card(
      child: ListTile(
          trailing: const Icon(FontAwesomeIcons.arrowRight, color: Colors.deepPurple,),
          title: Text('$day',style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 30,
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




