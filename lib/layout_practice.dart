import 'package:flutter/material.dart';

/// Column Widget
class ColumnPractice extends StatelessWidget {
  const ColumnPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column (
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          child: const Text('child1'),
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          child: const Text('child2'),
          color: Colors.blue,
        ),
      ],
    );
  }
}