import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/UI/Screen/Complet.dart';
import 'package:todo_app/UI/Screen/InComplet.dart';
import 'package:todo_app/UI/Screen/all_tasls.dart';
import 'package:todo_app/UI/Widget/task_widget.dart';
import 'package:todo_app/data/fake_data.dart';

class SmallScreen extends StatefulWidget {
  // const SmallScreen({super.key});

  Function function;
  SmallScreen(this.function);

  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AllTasks((){});
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
                    return CompletTaskWidget((){});
                  }));
                },
                child: const Text("go to complete taske")),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return InCompletTaskWidget((){});
                  }));
                },
                child: const Text("go to Incomplete taske")),
          ],
        )),
        appBar: AppBar(
          title: const Text("Todo App"),
        ),
        body: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TaskWidget(tasks[index], widget.function);
            }));
  }
}
