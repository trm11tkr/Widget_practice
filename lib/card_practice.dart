import 'package:flutter/material.dart';

/// シンプルなCard
class CardPractice01 extends StatelessWidget {
  const CardPractice01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text(
        'Card01',
        style: TextStyle(fontSize: 50),
      ),
      color: Colors.red, // Card自体の色
      margin: EdgeInsets.all(30),
      elevation: 10, // 影の離れ具合
      shadowColor: Colors.red, // 影の色
      
    );
  }
}

/// 枠線をアレンジしたCard
class CardPractice02 extends StatelessWidget {
  const CardPractice02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Center(
        child: Text(
          'Card02',
          style: TextStyle(fontSize: 40),
        ),
      ),
      color: Colors.cyan, // Card自体の色
      margin: EdgeInsets.all(30),
      elevation: 10, // 影の離れ具合
      shadowColor: Colors.red, // 影の色
      shape: RoundedRectangleBorder( // 枠線を変更できる
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(60), // Card左上
          bottomRight: Radius.elliptical(40, 20), //Card左上
          // (x, y) -> (元の角から左にどれだけ離れているか, 元の角から上にどれだけ離れているか)
        ),
      ),
    );
  }
}

/// ListTitleと併用
class CardPractice03 extends StatelessWidget {
  const CardPractice03({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Card Title'),
            subtitle: Text('Card SubTitle'),
          ),
          Text('hello'),
        ],
      ),
      color: Colors.green, // Card自体の色
      margin: const EdgeInsets.all(30),
      elevation: 8, // 影の離れ具合
      shadowColor: Colors.black ,// 影の色
      shape: RoundedRectangleBorder( // 枠線を変更できる
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

/// touchした時の動作を追加
class CardPractice04 extends StatelessWidget {
  const CardPractice04({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const SizedBox(
        width: 200,
        height: 100,
        child: Card(
          color: Colors.yellow,
          child:  Text('please tap'),
          ),
      ),
      onTap: () => print('hello'),
    );
  }
}

/// touchした時の動作を追加(アニメーションあり)
class CardPractice05 extends StatelessWidget {
  const CardPractice05({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapeed');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('please tap'),
          ),
        ),
      ),
    );
  }
}
