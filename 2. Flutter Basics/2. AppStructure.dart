//main.dart

import 'package:flutter/material.dart';
import 'package:flutter_basics/app.dart';

void main() {
  runApp(const MyApp());
}

//app.dart

import 'package:flutter/material.dart';
import 'package:flutter_basics/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

//screen.dart

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
        centerTitle: true,
      ),
    );
  }
}
