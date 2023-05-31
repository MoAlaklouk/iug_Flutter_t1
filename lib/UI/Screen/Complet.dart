import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/UI/Widget/task_widget.dart';
import 'package:todo_app/data/fake_data.dart';

class CompletTaskWidget extends StatelessWidget {
  //const CompletTaskWidget({super.key});
  late Function function;
  CompletTaskWidget(this.function);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: ListView.builder(
          itemCount: tasks.where((element) => element.isComplete).length,
          itemBuilder: (context, index) {
            return TaskWidget(
                tasks.where((element) => element.isComplete).toList()[index],
                function);
          }),
    );
  }
}
