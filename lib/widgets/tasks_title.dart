import 'package:flutter/material.dart';

class TasksTitle extends StatefulWidget {

  @override
  State<TasksTitle> createState() => _TasksTitleState();
}

class _TasksTitleState extends State<TasksTitle> {
  bool isChecked = false;
  // Callback function
  void checkboxCallback(bool? checkboxState) {
    if(checkboxState != null){
      setState(() {
        isChecked = checkboxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          'This is a task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TasksCheckbox(checkboxState: isChecked, toggleCheckboxState: checkboxCallback),
    );
  }
}

class TasksCheckbox extends StatelessWidget {
  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckboxState;
  TasksCheckbox({required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
        // StatelessWidget we can't setState((){}); we can do it by using Callback
    );
  }
}
