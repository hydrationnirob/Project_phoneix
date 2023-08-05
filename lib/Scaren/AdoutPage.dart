import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Class Routine for D 29th'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/Varendra-University-Logo-02.png', // Replace this with the path to your university logo image.
              height: 120,
            ),
            const SizedBox(height: 16),
            const Text(
              'Routine App for CSE D only',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Text(
              'This app helps Varendra University students to access their class routines easily and stay organized with their daily academic schedules. It provides a user-friendly interface to view and manage class routines for only CSE 29th Section D.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            const Text(
              'Developed by: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Rakibul Haque (221311146)',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contact us:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: rakibullhaques@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Text(
              'Phone: 01766209481',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
