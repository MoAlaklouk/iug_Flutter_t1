import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/UI/Screen/maintScreen.dart';
import 'package:todo_app/UI/Screen/resposive_design/large_screen.dart';
import 'package:todo_app/UI/Screen/resposive_design/responsive.dart';
import 'package:todo_app/UI/Screen/resposive_design/small_screen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).size.width > 450
            ? LargeScreen(updateScreen)
            : SmallScreen(updateScreen));
  }
}
