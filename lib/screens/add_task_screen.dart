import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final _textController = TextEditingController();

  String taskText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              controller: _textController,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskText = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Text('Add', style: TextStyle(color: Colors.white)),
              onPressed: () {
                _textController.clear();
                context.read<TaskData>().addTask(taskText);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
