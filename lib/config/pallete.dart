import 'package:flutter/material.dart';

class Pallete {
  static final Pallete _pallete = Pallete._internal();

  factory Pallete() {
    return _pallete;
  }

  Pallete._internal();
  final black = Color.fromARGB(255, 63, 61, 61);
  final Color purple = Color.fromARGB(255, 62, 62, 138);
  final Color blackishWhite = Color.fromARGB(255, 207, 202, 202);
}
