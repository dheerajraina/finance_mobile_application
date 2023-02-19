import 'package:finance_mobile_application/config/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.borderRadius,
      required this.width,
      required this.height,
      required this.color,
      required this.text,
      required this.onPressed});
  final Color color;
  final double borderRadius;
  final double height;
  final double width;
  final String text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Material(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
            height: height,
            width: width,
            child: Center(
                child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white, letterSpacing: 1),
            )),
          )),
    );
  }
}
