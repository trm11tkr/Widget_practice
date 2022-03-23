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
/// Center Widget example1
class CenterPractice01 extends StatelessWidget {
  const CenterPractice01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container (
          color: Colors.red,
          child: const Text('Center Widgetで中央配置')
      ),
    );
  }
}

/// Center Widget example2
class CenterPractice02 extends StatelessWidget {
  const CenterPractice02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Container (
              color: Colors.red,
              child: const Text('Column/Rowを使うとど真ん中からではなくなる')
          ),
          Container (
              color: Colors.blue,
              child: const Text('Column/Rowを使うとど真ん中からではなくなる')
          ),
        ],
      ),
    );
  }
}

/// SizedBox Widget
class SizedBoxPractice extends StatelessWidget {
  const SizedBoxPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container (
          width: 100,
          height: 100,
          color: Colors.red,
          child: const Text('Widget1')
        ),
        const SizedBox(height: 50,),
        Container (
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Text('Widget2')
        ),
        const SizedBox(height: 200,),
        Container (
            width: 100,
            height: 100,
            color: Colors.green,
            child: const Text('Widget3')
        ),
      ],
    );
  }
}