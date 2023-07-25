import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            Container(
              width: double.infinity,
              height: 150,
              child: Lottie.asset('images/animation_lki1kf82.json',fit: BoxFit.cover,),
            ),
            SizedBox(height: 80,),
            Wednesday(Icon(Icons.add_box,color: Colors.red,)),
          ]
      ),
    );
  }
}
