
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phoenix_user/Utiletis/reUseAble/DateTimeClass.dart';
import 'ChatSystremFuntion.dart';
class ChatMessage extends StatelessWidget {
  final String? notice;
  final String? title;
  final String? time;
  final String? date;
  final DateTimeClass dateTimeClass = DateTimeClass();


  ChatMessage({
    super.key,
    required this.notice,
    required this.title,
    this.time,
    this.date

  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$date',
                      style: const TextStyle(color: Colors.white, fontSize: 16.0,fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      '$title',
                      style: const TextStyle(color: Colors.white, fontSize: 16.0,fontWeight: FontWeight.bold,),
                    ),
                    Text(
                      "$time",
                      style: const TextStyle(color: Colors.white, fontSize: 16.0,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),


                Text(
                  '$notice',
                  style: const TextStyle(color: Colors.white, fontSize: 16.0,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

