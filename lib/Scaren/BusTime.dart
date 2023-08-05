import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
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
                BusCard("Alo Potti","Unknown"),
                BusCard("Hadir Mor","Unknown"),
                BusCard("Talaimar","Unknown"),
                const GFAccordion(
                    expandedTitleBackgroundColor: Colors.redAccent,
                    title: 'Important Info',
                    content: 'The bus schedule is currently experiencing issues and is not functioning correctly. The schedule will be updated once the bus system is operational again.',
                    collapsedIcon: Text('Show'),
                    expandedIcon: Text('Hide')
                ),
              ],
            ),
            // Tab 2 content
            Column(
              children: [
                BusCard("Talaimar","Unknown"),
                BusCard("Amm Chottor","Unknown"),
                BusCard("Vodra ","Unknown"),
                const GFAccordion(
                  expandedTitleBackgroundColor: Colors.redAccent,
                    title: 'GF Accordion',
                    content: 'The bus schedule is currently experiencing issues and is not functioning correctly. The schedule will be updated once the bus system is operational again.',
                    collapsedIcon: Text('Show'),
                    expandedIcon: Text('Hide')
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
