import 'package:flutter/material.dart';
import 'package:todo_list/models/tasks.dart';
import 'package:todo_list/widgets/tasks_title.dart';

class TasksList extends StatefulWidget {
  final List<Tasks> tasks;
  TasksList(this.tasks);


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TasksTitle(
          isChecked: widget.tasks[index].isDone,
          tasksTitle: widget.tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
      );
    },
      itemCount: widget.tasks.length,
    );
  }
}