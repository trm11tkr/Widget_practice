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

/// Row Widget
class RowPractice extends StatelessWidget {
  const RowPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          // height: 100, CrossAxisAlignment.stretchのため設定なし
          child: const Text('child1'),
          color: Colors.red,
        ),
        Container(
          width: 50,
          // height: 50,　CrossAxisAlignment.stretchのため設定なし
          child: const Text('child2'),
          color: Colors.blue,
        ),
      ],
    );
  }
}


/// Center Widget
class CenterPractice extends StatelessWidget {
  const CenterPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container (
          color: Colors.deepOrangeAccent,
          child: const Text('Center Widgetでchildを真ん中に')
      ),
    );
  }
}