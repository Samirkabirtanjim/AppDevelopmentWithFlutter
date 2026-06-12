import 'package:flutter/material.dart';

class Gettinginput extends StatefulWidget {
  const Gettinginput({super.key});

  @override
  State<Gettinginput> createState() => _GettinginputState();
}

class _GettinginputState extends State<Gettinginput> {
  final TextEditingController myController = TextEditingController();

  String user = "";
  void getUser() {
    setState(() {
      user = myController.text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My NotePad")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text(
              "Hello, $user",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: getUser, child: Text("Enter")),
          ],
        ),
      ),
    );
  }
}
