import 'package:flutter/material.dart';
import 'dart:ui';

class BlurredContainer extends StatelessWidget {
  const BlurredContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.bgColor,
    required this.child,
  }) : super(key: key);
  final double height;
  final double width;
  final Color? bgColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
          child: Container(
            margin: const EdgeInsets.all(10),
            height: height,
            width: width,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColor!.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            height: height,
            width: width,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[100]!.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child)
      ],
    );
  }
}
