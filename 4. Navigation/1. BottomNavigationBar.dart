import 'package:flutter/material.dart';
import 'package:mitchkokoyt/pages/pass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pass(),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:mitchkokoyt/pages/profile.dart';
import 'package:mitchkokoyt/pages/settingspage.dart';

import 'homepage.dart';

class Pass extends StatefulWidget {
  const Pass({super.key});

  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // update the new selected index
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // page that we have
  final List _pages = [
    // Home Page
    Homepage(),

    // Profile Page
    Profile(),

    // Setting Page
    Settingspage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(title: Text("Navigation")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home page
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'

          ),
          // person
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'

          ),
          // setting
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',

          ),
        ],
      ),
    );
  }
}





import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text("H O M E   P A G E"),
      ),
    );
  }
}





import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text("P R O F I L E   P A G E"),
      ),
    );
  }
}











import 'package:flutter/material.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Text("S E T T I N G S   P A G E"),
      ),
    );
  }
}

