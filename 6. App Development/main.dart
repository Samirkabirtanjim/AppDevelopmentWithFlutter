import 'package:flutter/material.dart';
import 'package:mytodo/pages/todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          surface: Color(0xFF0F111A),          // Body Background
          surfaceContainer: Color(0xFF1A1D29), // AppBar Background
          primary: Color(0xFFBB86FC),          // FAB / Accent Color
          onSurface: Color(0xFFE3E3E3),        // Text Color
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1A1D29), // Matches surfaceContainer
          elevation: 0,
        ),
      ),
      home: TodoList(),
    );
  }
}