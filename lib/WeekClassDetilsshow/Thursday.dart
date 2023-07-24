import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Widget.dart';
class Cthursday extends StatefulWidget {
  const Cthursday({Key? key}) : super(key: key);

  @override
  State<Cthursday> createState() => _CthursdayState();
}

class _CthursdayState extends State<Cthursday> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Column(
          children: [
            Thursday(),
          ]
      ),
    );
  }
}
