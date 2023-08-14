import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'AdoutPage.dart';
import 'In Next Update.dart';

final Uri _url = Uri.parse('https://docs.google.com/spreadsheets/d/1IkWnYEBIKQK9Jlkuooo11oEM5mtz9DUc/edit#gid=461023197');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch Official Class Routine');
  }
}


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

      const ListTile(
        leading: Icon(Icons.offline_bolt_rounded,color: Colors.red,),

        title: Text(
          'Official Class Routine',
          style: TextStyle(fontSize: 18.0),
        ),
       onTap:  _launchUrl,
      ),
      const Divider(),
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

