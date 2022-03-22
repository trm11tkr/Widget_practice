import 'package:flutter/material.dart';

/// Container Widget Practice


/// シンプルなContainer Widget
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
    );
  }
}

/// 枠線、角度あり
class ContainerPractice02 extends StatelessWidget {
  const ContainerPractice02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100.0,
        height: 50.0,
        child: const Text('Container'),
        transform: Matrix4.rotationZ(0.5), // 角度 　rotationXやrotationYもある
        decoration: BoxDecoration( // Containerの見た目を変える
          color: Colors.cyan[500], // ContainerのColorプロパティと重複できない
          border: Border.all( // 枠線
            color: Colors.red,
            width: 5, // 枠線の太さ
          ),
          borderRadius: BorderRadius.circular(20) // 枠線の角丸
        ),
      ),
    );
  }
}

/// 完全な丸
class ContainerPractice03 extends StatelessWidget {
  const ContainerPractice03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100.0,
        height: 100.0,
        child: const Text('Container'),
        decoration: BoxDecoration( // Containerの見た目を変える
          color: Colors.cyan[500],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}


/// 立体感を出す
class ContainerPractice04 extends StatelessWidget {
  const ContainerPractice04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100.0,
        height: 100.0,
        child: const Text('Container'),
        decoration: BoxDecoration( // Containerの見た目を変える
            color: Colors.cyan[500],
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26, // 影の色
                spreadRadius: 1.0, // 影の大きさ
                blurRadius: 10.0, // 影の不透明度
                offset: Offset(10, 10), // x軸、y軸をどれだけずらすか
              ),
            ]
        ),
      ),
    );
  }
}