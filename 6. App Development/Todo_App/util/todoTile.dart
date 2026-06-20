import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.outlineVariant.withAlpha(80),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant.withAlpha(80),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Checkbox(value: taskCompleted, onChanged: onChanged),
          SizedBox(width: 2),
          Text(
            taskName,
            style: TextStyle(
              decoration: taskCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}
