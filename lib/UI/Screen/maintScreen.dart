import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_app/UI/Screen/all_tasls.dart';
import 'package:todo_app/UI/Screen/Complet.dart';
import 'package:todo_app/UI/Screen/InComplet.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  refreshPage() {
    //function
    setState(() {}); 
  }

  PageController pageController = PageController();
  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexpage,
          onTap: (v) {
            indexpage = v;
            pageController.jumpToPage(v);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complet Task"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplet Task")
          ],
        ),
        appBar: AppBar(
          title: Text("Todo App"),
        ),
        body: PageView(
          controller: pageController,
          children: [
            AllTasks(refreshPage),
            CompletTaskWidget(refreshPage),
            InCompletTaskWidget(refreshPage),
            
          
          ],
                 
        ));
  }
}
