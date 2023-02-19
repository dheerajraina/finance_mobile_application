import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.content, this.height, required this.width, this.color});

  final Widget content;
  final double? height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Material(
          color: color ?? null,
          elevation: 8,
          borderRadius: BorderRadius.circular(20),
          child: Padding(padding: const EdgeInsets.all(8.0), child: content)),
    );
  }
}
