import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TextNormal({super.key, this.size = 16, required this.text, this.color = Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}