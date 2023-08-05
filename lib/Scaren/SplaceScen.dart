
import 'package:flutter/material.dart';

import 'HomeScen.dart';
import 'NavBar.dart';

class SplaseScen extends StatefulWidget {
  const SplaseScen({Key? key, required String title}) : super(key: key);

  @override
  State<SplaseScen> createState() => _SplaseScenState();
}

class _SplaseScenState extends State<SplaseScen> {

  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {

    Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const NavButton()),
            (route) => false,
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Image.asset('images/newLogo.png',width: 300,height: 300,),
        ),
    );
  }
}
