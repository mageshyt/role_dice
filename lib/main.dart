// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:role_dice/gradient_container.dart';

void main() {
  // remove debug banner

  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MyApp(
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(198, 0, 0, 0),
            ], // black
          ),
        )),
  );
}
