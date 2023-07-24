
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'All_Class_List_scen.dart';
import 'HomeScen.dart';







class NavButton extends StatefulWidget {
  const NavButton({Key? key}) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    NevController controller = Get.put(NevController());
    return Scaffold(

      bottomNavigationBar: GNav(
        color: Colors.deepPurple,
        backgroundColor: Colors.white,
        activeColor: Colors.amberAccent,

        onTabChange: (value){
          controller.index.value = value;

        },

        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Today ",
          ),
          GButton(
            icon: Icons.school,
            text: "Week Class",
          ),

          GButton(

              icon: Icons.bus_alert, text: "Bus Schedule",
          ),


        ],
      ),
      body: Obx(() {
        return controller.page[controller.index.value];
      }),

    );
  }
}


class NevController extends GetxController
{
  RxInt index = 0.obs;


  var page=[
    const HomeScen(),
    const AllClassList(),



  ];
}