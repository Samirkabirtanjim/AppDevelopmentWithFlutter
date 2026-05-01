import 'package:flutter/material.dart';

class Logintohome extends StatelessWidget {
  final String phone;
  final String ? password;
  const Logintohome({super.key, required this.phone, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: Colors.black,
        title: const Text("Binge", style: TextStyle(color: Colors.red)),
      ),
      body: Center(
        child: Text("Welcome $phone", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
