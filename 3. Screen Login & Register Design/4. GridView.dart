import 'package:flutter/material.dart';

class Gridviews extends StatelessWidget {
  const Gridviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_off_sharp, size: 60,),
                  Text("Person", style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amberAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fourteen_mp_sharp, size: 60,),
                  Text("Fourteen", style: TextStyle(fontSize: 20),)
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.deepOrangeAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.eighteen_mp_sharp, size: 60,),
                  Text("Eighteen", style: TextStyle(fontSize: 20),)
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.deepOrange,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.nineteen_mp_sharp, size: 60,),
                  Text("Nineteen", style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
