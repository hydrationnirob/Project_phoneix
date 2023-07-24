import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class TodaylistCard extends StatefulWidget {
  const TodaylistCard({Key? key}) : super(key: key);

  @override
  State<TodaylistCard> createState() => _TodaylistCardState();
}

class _TodaylistCardState extends State<TodaylistCard> {


  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(

          title: Text('Network Lab'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Room 1"),
                Chip(label: Text("9:00-10:00")),
              ]
          )

      ),
    );
  }
}


class Cardmenu extends StatefulWidget {
  const Cardmenu({Key? key}) : super(key: key);

  @override
  State<Cardmenu> createState() => _CardmenuState();
}

class _CardmenuState extends State<Cardmenu> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: Icon(FontAwesomeIcons.arrowRight, color: Colors.deepPurple,),
          title: Text('Sunday',style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 30,
          ),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Chip(label: Text("Total Class 3")),
              ]
          )
      )
    );
  }
}

