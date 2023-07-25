import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Utiletis/reUseAble/Bus_stop_card.dart';

class Bustime extends StatefulWidget {
  const Bustime({Key? key}) : super(key: key);

  @override
  State<Bustime> createState() => _BustimeState();
}

class _BustimeState extends State<Bustime> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bus Stop'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'), // Tab 1 label
              Tab(text: 'Tab 2'), // Tab 2 label
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1 content
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: Lottie.asset('images/animation_lki4n4r0.json', height: 100,width: 100,fit: BoxFit.cover,),
                ),
                const SizedBox(height: 190,),
                BusCard("Talaimar","9:58"),
                BusCard("Talaimar","9:58"),
                BusCard("Talaimar","9:58"),
              ],
            ),
            // Tab 2 content
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Lottie.asset('images/animation_lki1kf82.json', fit: BoxFit.cover,),
                  ),
                ),
                // Add other widgets for Tab 2 content here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
