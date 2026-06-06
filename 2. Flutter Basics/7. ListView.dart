import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

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
          itemCount: 10,
            itemBuilder: (context, index) => ListTile(
          title: Text(index.toString()),
        ))
      ),
    );
  }
}
