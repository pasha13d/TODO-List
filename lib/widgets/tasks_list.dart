import 'package:flutter/material.dart';
import 'package:todo_list/widgets/tasks_title.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTitle(),
        TasksTitle(),
        TasksTitle(),
        TasksTitle(),
      ],
    );
  }
}