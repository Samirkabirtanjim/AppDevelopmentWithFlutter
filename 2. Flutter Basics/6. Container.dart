// here showing how to use container and problem of using it
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                  //width: 200,
                    height: 300,
                  color: Colors.red,
                ),
                Container(
                  //width: 200,
                    height: 300,
                  color: Colors.yellow,
                ),
                Container(
                  //width: 200,
                    height: 300,
                  color: Colors.green,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
