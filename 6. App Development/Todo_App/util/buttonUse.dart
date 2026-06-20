import 'package:flutter/material.dart';

class ButtonUse extends StatelessWidget {

  final String name;
  VoidCallback onPressed;

  ButtonUse({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Text(name),
    );
  }
}
