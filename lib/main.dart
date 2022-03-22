import 'package:flutter/material.dart';
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
            body: Column(
              children: const [
                ContainerPractice01(), // シンプル
                ContainerPractice02(), // 枠線、角度あり、角丸
                SizedBox(height: 50,), // 垂直方向の余白
                ContainerPractice03(), // 完全な丸
                ContainerPractice04(),
              ],
            ),
        ),
      ),
    );
  }
}