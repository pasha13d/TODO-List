import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  TasksTitle({required this.isChecked, required this.tasksTitle, required this.checkboxCallback});

  final bool isChecked;
  final String tasksTitle;
  final ValueChanged<bool?> checkboxCallback;

  // Callback function
  // void checkboxCallback(bool? checkboxState) {
  //   if (checkboxState != null) {
  //
  //   }
  // }

  //
  // setState(() {
  // isChecked = checkboxState;
  // });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasksTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
        // onChanged: toggleCheckboxState,
        // StatelessWidget we can't setState((){}); we can do it by using Callback
      ),
    );
  }
}
