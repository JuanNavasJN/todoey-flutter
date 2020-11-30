import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final checkboxCallback;
  final longPressCallback;

  TaskTile(
      {@required this.task, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: checkboxCallback,
      ),
    );
  }
}
