import 'package:flutter/material.dart';
import 'package:phoenix_user/Scaren/HomeScen.dart';

import 'AdoutPage.dart';
import 'In Next Update.dart';

Widget Drower(context) {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      const UserAccountsDrawerHeader(

        accountEmail: Text(''),
        accountName: Text(
          '',
          style: TextStyle(fontSize: 24.0),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/26850656_754909891380492_2630732052702935892_o.jpg"
            )
          )
        ),
      ),
      ListTile(
        leading: const Icon(Icons.update,color: Colors.red,),
        title: const Text(
          'In Next Update',
          style: TextStyle(fontSize: 18.0),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>  NextUpdatePage(),
            ),
          );
        },
      ),
      const Divider(),
      ListTile(
        leading: const Icon(Icons.app_blocking,color: Colors.red,),

        title: const Text(
          'About app',
          style: TextStyle(fontSize: 18.0),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>  AboutPage(),
            ),
          );
        },
      ),
    ],
  );
}

