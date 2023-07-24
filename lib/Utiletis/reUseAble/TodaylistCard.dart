import 'package:flutter/material.dart';
class ListCard extends StatefulWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {


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



