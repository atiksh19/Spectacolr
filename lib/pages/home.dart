import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(decoration: BoxDecoration(
          color: Colors.indigo,
        ),),
      ]
    );
  }
}