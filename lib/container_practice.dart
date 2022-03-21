import 'package:flutter/material.dart';

/// Container Widget Practice

class ContainerPractice01 extends StatelessWidget {
  const ContainerPractice01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      color: Colors.cyan[500],
      width: double.infinity,
      height: 50.0,
      child: const Text('Container'),
      // transform: Matrix4.rotationZ(0.5),
    );
  }
}