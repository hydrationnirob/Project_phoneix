import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Widget.dart';
class CSunday extends StatefulWidget {
  const CSunday({Key? key}) : super(key: key);

  @override
  State<CSunday> createState() => _CSundayState();
}

class _CSundayState extends State<CSunday> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Column(
        children: [
          sunday(),
        ]
      ),
    );
  }
}