import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key? key,
    required this.child,
    required this.bgColor,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 15, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor!.withOpacity(0.4)),
        child: child);
  }
}
