import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'All_Class_List_scen.dart';

import 'ChatBoxSysUser/ChatSystremFuntion.dart';
import 'HomeScen.dart';
import 'MapScreen/HomeMapScreen.dart';

class NavButton extends StatefulWidget {
  const NavButton({Key? key}) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();


}

class _NavButtonState extends State<NavButton> {
  NevController controller = Get.put(NevController());


  Future<bool> _onBackPressed() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Close this App ?'),
        content: const Text('Are you sure you want to Close'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    )) ??
        false;
  }

  MainMapScreen mainMapScreen = MainMapScreen();

  

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        bottomNavigationBar: GNav(
          color: Colors.black45,
          backgroundColor: Colors.white,
          activeColor: Colors.red,
          onTabChange: (value) {
            controller.index.value = value;
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.school,
              text: "Week Class",
            ),
            GButton(
              icon: Icons.chat,
              text: "Notice",
            ),
            GButton(
              icon: Icons.bus_alert,
              text: "Bus Schedule",
            ),

          ],
        ),
        body: Obx(() {
          return controller.page[controller.index.value];
        }),
      ),
    );
  }
}

class NevController extends GetxController {
  RxInt index = 0.obs;

  var page = [
    const HomeScen(),
    const AllClassList(),
    ChatScreen(),
     MainMapScreen(),

  ];
}
