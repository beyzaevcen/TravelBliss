import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final Color color;

  const BoldText({
    Key? key,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
