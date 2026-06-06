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
              Expanded(
                child: Container(
                  //width: 200,
                  //height: 200,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  //width: 200,
                  //height: 200,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: Container(
                  //width: 200,
                  //height: 200,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
