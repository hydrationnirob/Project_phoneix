import 'package:flutter/material.dart';

import 'Scaren/SplaceScen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Phoenix',
      theme: ThemeData(
        useMaterial3: true,
       brightness: Brightness.light,
       primarySwatch: Colors.red,
      ),

      home: const SplaseScen(title: 'Phoenix'),

    );
  }
}


