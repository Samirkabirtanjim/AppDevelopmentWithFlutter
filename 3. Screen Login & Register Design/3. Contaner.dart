import 'package:flutter/material.dart';

import 'container.dart';

class Maincontainer extends StatelessWidget {
  const Maincontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Containers(),
    );
  }
}




import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, size: 50, color: Colors.white),
                        Text(
                          "Phone",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10), // spacing

                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.blueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight
                    ),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, size: 50, color: Colors.white),
                        Text(
                          "Phone",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
