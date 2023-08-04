import 'package:flutter/material.dart';



Widget HomePageCardWidget (Widget Timeimg, String Title, String Room, String Stratime, String Endtime) {
  return  Card(
    child: Column(
        children: [
          ListTile(
            title:  Text(Title,style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing:  Chip(label: Text("$Stratime-$Endtime"),labelStyle: const TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle:  Text("Room $Room"),
          ),
        ]

    ),
  );
}



