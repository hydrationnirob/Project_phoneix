import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScen extends StatefulWidget {
  const HomeScen({Key? key}) : super(key: key);

  @override
  State<HomeScen> createState() => _HomeScenState();
}

class _HomeScenState extends State<HomeScen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today\'s Class',style: TextStyle(
          color: Colors.white,

        ),),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: Text('Drawer'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Today's Class",style: TextStyle(
                fontSize: 20,
              )),
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                      child: const Center(
                        child: Text("Total Class 30",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                      )
                  ),
                ),
                const SizedBox(width: 12,),
                Expanded(
                  child: Container(
                    height: 90,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    child: const Center(
                      child: Text("Cancel Class 30",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                    )
                  ),
                ),
              ]
            ),
              SizedBox(height: 20,),
              const Text("Today: Sunday, 11:00 AM",style: TextStyle(fontSize: 22,color: Colors.red),),
          ],

        ),
      )

    );
  }
}
