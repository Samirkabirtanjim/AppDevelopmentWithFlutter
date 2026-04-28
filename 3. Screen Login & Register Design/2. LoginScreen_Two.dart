import 'package:flutter/material.dart';

class LoginpartTwo extends StatelessWidget {
  const LoginpartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Binge", style: TextStyle(color: Colors.red)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Binge",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontFamily: "Bebas Neue",
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
