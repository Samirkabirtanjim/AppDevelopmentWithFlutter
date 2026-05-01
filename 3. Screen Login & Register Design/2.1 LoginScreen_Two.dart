import 'package:flutter/material.dart';

class Logintohome extends StatelessWidget {
  const Logintohome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: Colors.black,
        title: const Text("Binge", style: TextStyle(color: Colors.red)),
      ),
      body: Center(
        child: Text("Loading........", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
