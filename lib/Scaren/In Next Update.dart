import 'package:flutter/material.dart';

class NextUpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Update'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://www.vdh.virginia.gov/content/uploads/sites/23/2022/02/new-update.png', // Replace this with the path to your next update image.
              height: 120,
            ),
            const SizedBox(height: 16),
            const Text(
              'Upcoming Features',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'We are constantly working to improve your experience with the Varendra University Class Routine app. In the next update, we plan to introduce the following features:',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Notifications for class schedule changes.'),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Option to set custom reminders for classes.'),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Improved performance and bug fixes.'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Stay tuned for the next update and keep providing your valuable feedback to help us make the app even better!',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}