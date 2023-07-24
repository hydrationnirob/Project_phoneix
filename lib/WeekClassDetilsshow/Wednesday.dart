import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Widget.dart';
class Cwednesday extends StatefulWidget {
  const Cwednesday({Key? key}) : super(key: key);

  @override
  State<Cwednesday> createState() => _CwednesdayState();
}

class _CwednesdayState extends State<Cwednesday> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Column(
          children: [
            Wednesday(),
          ]
      ),
    );
  }
}
