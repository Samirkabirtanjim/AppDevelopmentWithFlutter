import 'package:flutter/material.dart';
import 'package:mitchkokoyt/pages/homepage.dart';
import 'package:mitchkokoyt/pages/settingspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/Homepage': (context) => Homepage(),
        '/Settingspage': (context) => Settingspage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App Bar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
              children: [CircleAvatar(
                radius: 35,
                child: Icon(Icons.person, size: 40),
              ),
                SizedBox(height: 10),

              SizedBox(height: 50),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H o m e"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/Homepage');
                },
              ),

                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("S e t t i n g"),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/Settingspage');
                  },
                )
              ]
          ),
        ),
      ),
    );
  }
}
