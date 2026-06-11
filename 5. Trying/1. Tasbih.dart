import 'package:flutter/material.dart';
import 'package:learning/page/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(),
    );
  }
}



import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _tap = 0;

  void _incrementTap() {
    setState(() {
      _tap++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tasbih Counter", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF004D40),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                      _tap.toString(),
                    style: TextStyle(fontSize: 80),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _incrementTap,
                child: Text("Tap"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(100, 40),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
