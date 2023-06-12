import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BoxText extends StatelessWidget {
  final String text;
  const BoxText(
    this.text, {
    Key? key,
  }) : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      // add paddings
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),

      // border radius
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),

      child: Text(
        'Hello $text',
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
