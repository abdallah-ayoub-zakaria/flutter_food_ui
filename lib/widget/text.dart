// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Textspage extends StatelessWidget {
  String names;
  double sizes;
  Textspage({super.key, required this.names, required this.sizes});

  @override
  Widget build(BuildContext context) {
    return Text(
      names,
      style: TextStyle(
          fontSize: sizes, fontWeight: FontWeight.bold, fontFamily: 'MyFont'),
    );
  }
}
