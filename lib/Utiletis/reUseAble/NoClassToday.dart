import 'package:flutter/material.dart';
import 'dart:math'; // Import this library for random number generation.

Widget noClassToday() {
  List<String> randomSubtitles = [
    "Be thankful for what you have; you’ll end up having more",
    "The only way to do great work is to love what you do",
    "In the middle of every difficulty lies opportunity",
    "The future depends on what you do today",
    "Strive for progress, not perfection",

  ];

  // Generate a random index to select a random subtitle.
  int randomIndex = Random().nextInt(randomSubtitles.length);
  String selectedSubtitle = randomSubtitles[randomIndex];

  return Container(
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade900,
      borderRadius: BorderRadius.circular(10.0),
      image: const DecorationImage(
        image: AssetImage("images/holiday-beach.jpg"),
        opacity: 0.3,
        fit: BoxFit.cover,
      ),
    ),
    child:  ListTile(
      iconColor: Colors.white,
      leading: const Icon(Icons.holiday_village_outlined),
      title: const Text(
        "No Class Tomorrow",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        selectedSubtitle, // Use the randomly selected subtitle.
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
