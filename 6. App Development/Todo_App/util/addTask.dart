import 'package:flutter/material.dart';

import 'button_use.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF1E2330),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add Task"
              ),
            ),
            Row(
              children: [
                // Save Button
                ButtonUse(name: 'Save', onPressed: () {

                },),
                // Cancel Button
                ButtonUse(name: 'Cancel', onPressed: () {

                },),
              ],
            )
          ],
        )
      ),
    );
  }
}
