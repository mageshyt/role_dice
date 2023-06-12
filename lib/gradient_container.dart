import 'package:flutter/material.dart';
import 'package:role_dice/roll_dice.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  final List<Color> colors;
  const MyApp({
    Key? key,
    required this.colors,
  }) : super(key: key);

  // ignore: prefer_const_constructors (remove const)

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          tileMode: TileMode.decal,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
