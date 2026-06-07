import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App Bar", style: TextStyle(color: Colors.white)),
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.white),
          backgroundColor: Colors.deepPurpleAccent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: Colors.white),
            ),
          ],
        ),
        body: GridView.builder(
          itemCount: 16,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) => Container(
              color: Colors.deepPurple,
              margin: EdgeInsets.all(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("I", style: TextStyle(color: Colors.white),),
                  Icon(Icons.favorite, color: Colors.white),
                  Text("Football", style: TextStyle(color: Colors.white),)
                ],
              ),
          ),
        ),
      ),
    );
  }
}
