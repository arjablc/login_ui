import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({
    Key? key,
    required this.text,
    required this.textSize,
    required this.bgColor,
    required this.function,
  }) : super(key: key);
  final String text;
  final double textSize;
  final Color? bgColor;
  final Function? function;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        maximumSize: const Size(150, 75),
        minimumSize: const Size(100, 50),
        foregroundColor: Colors.black,
        backgroundColor: bgColor!.withOpacity(0.4),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () => function,
      child: Text(
        text,
        style: TextStyle(fontSize: textSize),
      ),
    );
  }
}
