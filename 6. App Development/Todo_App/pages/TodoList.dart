import 'package:flutter/material.dart';
import 'package:mytodo/util/todo_tile.dart';

import '../util/add_task.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List toDoList = [
    ["Not add yet", false],
    ["Add a task", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void newTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AddTask();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo List"), centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: newTask,
        child: Text("+", style: TextStyle(fontSize: 25)),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
