import 'package:flutter/material.dart';

import '../Utiletis/reUseAble/Week_Class.dart';
class Sunday extends StatefulWidget {
  const Sunday({Key? key}) : super(key: key);

  @override
  State<Sunday> createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
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
