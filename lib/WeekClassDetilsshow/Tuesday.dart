import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Widget.dart';
class Ctuesday extends StatefulWidget {
  const Ctuesday({Key? key}) : super(key: key);

  @override
  State<Ctuesday> createState() => _CtuesdayState();
}

class _CtuesdayState extends State<Ctuesday> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: Column(
          children: [
            Tuesday(),
          ]
      ),
    );
  }
}
