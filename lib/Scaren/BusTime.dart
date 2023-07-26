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
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Root 1'), // Tab 1 label
              Tab(text: 'Root 2'), // Tab 2 label
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1 content
            Column(
              children: [
                const SizedBox(height: 5,),
                BusCard("Talaimar","9:58"),
                BusCard("Talaimar","9:58"),
                BusCard("Talaimar","9:58"),
              ],
            ),
            // Tab 2 content
            Column(
              children: [
                BusCard("Talaimar","9:58"),
                BusCard("Talaimar","9:58"),
                BusCard("Talaimar","9:58"),
                // Add other widgets for Tab 2 content here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
