import 'package:flutter/material.dart';

/// シンプルなドロップダウン
class DropDownButtonPractice01 extends StatefulWidget {
  const DropDownButtonPractice01({Key? key}) : super(key: key);

  @override
  State<DropDownButtonPractice01> createState() =>
      _DropDownButtonPractice01State();
}

class _DropDownButtonPractice01State extends State<DropDownButtonPractice01> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 100,
        ),
        Text(dropdownValue),
      ],
    );
  }
}

/// Colorを選択
class DropDownButtonPractice02 extends StatefulWidget {
  const DropDownButtonPractice02({Key? key}) : super(key: key);

  @override
  State<DropDownButtonPractice02> createState() =>
      _DropDownButtonPractice02State();
}

class _DropDownButtonPractice02State extends State<DropDownButtonPractice02> {
  var _color = Colors.grey;
  final List<MaterialColor> colors = [
    Colors.grey,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<MaterialColor>(
          value: _color,
          items: colors.map((e) => colorTile(e)).toList(),
          onChanged: (MaterialColor? value) {
            setState(() {
              _color = value ?? Colors.grey;
            });
          },
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          width: 100,
          height: 100,
          color: _color,
        ),
      ],
    );
  }
}

DropdownMenuItem<MaterialColor> colorTile(MaterialColor color) {
  return DropdownMenuItem(
    value: color,
    child: Center(
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    ),
  );
}
