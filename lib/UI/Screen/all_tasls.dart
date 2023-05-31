import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/UI/Widget/task_widget.dart';
import 'package:todo_app/data/fake_data.dart';

class AllTasks extends StatelessWidget {
//  const AllTasks({super.key});
  late Function function;
  AllTasks(this.function);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskWidget(tasks[index], function);
          }),
    );
  }
}
