import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/UI/Screen/Complet.dart';
import 'package:todo_app/UI/Screen/InComplet.dart';
import 'package:todo_app/UI/Screen/all_tasls.dart';
import 'package:todo_app/UI/Widget/task_widget.dart';
import 'package:todo_app/data/fake_data.dart';

class LargeScreen extends StatelessWidget {
  // const LargeScreen({super.key});
  Function function;
  LargeScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todo App"),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return AllTasks(() {});
                        }));
                      },
                      child: const Text("go to all tasks")),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return CompletTaskWidget(() {});
                        }));
                      },
                      child: Text("go to complete taske")),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return InCompletTaskWidget(() {});
                        }));
                      },
                      child: Text("go to Incomplete taske")),
                ],
              ),
            ),
            Expanded(
              child: Center(
                  child: ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return TaskWidget(tasks[index], function);
                      })),
            )
          ],
        ));
  }
}
