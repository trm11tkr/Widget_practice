import 'package:flutter/material.dart';
import 'package:widget_practice/layout_practice.dart';
import 'container_practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Widget test App'),),
            body: RowPractice(),
        ),
      ),
    );
  }
}