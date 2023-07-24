import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Widget.dart';
class Cmonday extends StatefulWidget {
  const Cmonday({Key? key}) : super(key: key);

  @override
  State<Cmonday> createState() => _CmondayState();
}

class _CmondayState extends State<Cmonday> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Column(
          children: [
            monday(),
          ]
      ),
    );
  }
}
