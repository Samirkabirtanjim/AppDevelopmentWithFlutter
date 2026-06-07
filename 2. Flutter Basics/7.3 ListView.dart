import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  List names = ["Samir", "Kabir", "Tanjim"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(title: Text("My App Bar", style: TextStyle(color: Colors.white),),
           elevation: 0,
           leading: Icon(Icons.menu, color: Colors.white,),
           backgroundColor: Colors.deepPurpleAccent,
           actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white,))],
         ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) => ListTile(
          title: Text(names[index]),
        ))
      ),
    );
  }
}
