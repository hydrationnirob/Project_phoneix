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
      useMaterial3: true,
      title: 'Phoenix',
      theme: ThemeData(
       brightness: Brightness.light,
       primarySwatch: Colors.deepPurple,
      ),

      home: const SplaseScen(title: 'Phoenix'),

    );
  }
}


