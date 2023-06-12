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
      // border radius

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
