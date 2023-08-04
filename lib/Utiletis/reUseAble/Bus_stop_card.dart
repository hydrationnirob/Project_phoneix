import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

Widget BusCard (String Location, String Time)
{
  return Card(
      elevation: 5,
      child: ListTile(
          leading: Lottie.asset("images/busLogo.json",fit: BoxFit.cover,),

          title: Text(Location,style: const TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),),
          subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Chip(label: Text("Time: $Time")),
              ]
          )
      )
  );
}