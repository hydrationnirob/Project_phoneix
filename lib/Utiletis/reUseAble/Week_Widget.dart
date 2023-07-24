import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget sunday () {
  return const Card(
    child: Column(
      children: [
        ListTile(
            trailing: const Icon(Icons.update, color: Colors.deepPurple),

            title: Text('Network'),
            subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Room 1"),
                  Chip(label: Text("9:00-10:00")),

                ]
            )
        ),
        Divider(),
        ListTile(
            title: Text('Software Lab'),
            subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Room 1"),
                  Chip(label: Text("9:00-10:00")),
                ]
            )
        ),
        Divider(),
        ListTile(
            title: Text('Math Lab'),
            subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Room 1"),
                  Chip(label: Text("9:00-10:00")),
                ]
            )
        ),
      ]

    ),
  );
}
Widget monday () {
  return const Card(
    child: Column(
        children: [
          ListTile(
              title: Text('Math '),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
        ]

    ),
  );
}
Widget Tuesday () {
  return  Card(
    child: Column(
        children: [
          ListTile(
              title: Text('Network Lab',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              leading: LottieBuilder.asset('images/animation_lkhbsvuf.json', fit: BoxFit.cover),
              trailing: Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
                color: Colors.pink,
              ) ,),
              subtitle: Text("Room 1"),
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
        ]

    ),
  );
}
Widget Wednesday () {
  return const Card(
    child: Column(
        children: [
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
        ]

    ),
  );
}
Widget Thursday () {
  return const Card(
    child: Column(
        children: [
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
          Divider(),
          ListTile(
              title: Text('Network Lab'),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Room 1"),
                    Chip(label: Text("9:00-10:00")),
                  ]
              )
          ),
        ]

    ),
  );
}



