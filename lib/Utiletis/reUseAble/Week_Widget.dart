import 'package:flutter/material.dart';


Widget sunday (Widget Timeimg) {
  return  Card(
    child: Column(
      children: [
        ListTile(
          title: const Text('Network Lab',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          leading: Timeimg,
          trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
            color: Colors.pink,
          ) ,),
          subtitle: const Text("Room 1"),
        ),
        Divider(),
        ListTile(
          title: const Text('Network Lab',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          leading: Timeimg,
          trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
            color: Colors.pink,
          ) ,),
          subtitle: const Text("Room 1"),
        ),
        Divider(),
        ListTile(
          title: const Text('Network Lab',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          leading: Timeimg,
          trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
            color: Colors.pink,
          ) ,),
          subtitle: const Text("Room 1"),
        ),
      ]

    ),
  );
}
Widget monday (Widget Timeimg) {
  return  Card(
    child: Column(
        children: [
          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
          Divider(),
          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
          Divider(),
          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
        ]

    ),
  );
}
Widget Tuesday (Widget? Timemg) {
  return  Card(
    child: Column(
        children: [
          ListTile(
              title: const Text('Network Lab',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              leading: Timemg,
              trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
                color: Colors.pink,
              ) ,),
              subtitle: const Text("Room 1"),
          ),
          const Divider(),
          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timemg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
          const Divider(),
          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timemg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
        ]

    ),
  );
}
Widget Wednesday (Widget Timeimg, String Title, String Room, String Stratime, String Endtime) {
  return  Card(
    child: Column(
        children: [
          ListTile(
            title:  Text(Title,style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing:  Chip(label: Text("$Stratime-$Endtime"),labelStyle: const TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle:  Text("Room $Room"),
          ),
          Divider(),

          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
          Divider(),
          ListTile(
            title: const Text('Network Lab',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Timeimg,
            trailing: const Chip(label: Text("9:00-10:00"),labelStyle: TextStyle(
              color: Colors.pink,
            ) ,),
            subtitle: const Text("Room 1"),
          ),
        ]

    ),
  );
}
Widget Thursday (Widget Timeimg) {
  return  Card(
    child: Column(
        children: [
          ListTile(

              title: Text('Network Lab'),
              trailing: Timeimg ,
              subtitle: const Column(
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



