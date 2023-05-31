import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/models/class%20task.dart';

class TaskWidget extends StatefulWidget {
  //const TaskWidget({super.key});
  Task task;
  Function fun;
  TaskWidget(this.task, this.fun);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Checkbox(
              value: widget.task.isComplete,
              onChanged: (v) {
                widget.task.isComplete = !widget.task.isComplete;
                widget.fun();
                setState(() {});
              }),
          Text(widget.task.name),
        ],
      ),
    );
  }
}
