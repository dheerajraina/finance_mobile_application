import 'package:finance_mobile_application/config/config.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.radius, required this.image});
  final double radius;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Pallete().purple,
        child: Icon(Icons.join_full,size:radius ),
      ),
    );
  }
}
