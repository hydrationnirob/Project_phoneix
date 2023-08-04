import 'package:flutter/material.dart';

Widget noClassToday() {
  return const Card(
    child: ListTile(
      iconColor: Colors.red,
      leading: Icon(Icons.holiday_village_outlined),
      title: Text(
        "No Class Tomorrow",
      )
    )
  );
}