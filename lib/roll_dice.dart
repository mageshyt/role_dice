import 'package:flutter/material.dart';
import 'package:role_dice/box_text.dart';

class RollDice extends StatefulWidget {
  const RollDice({Key? key}) : super(key: key);

  @override
  // ignore:
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  // ignore: non_constant_identifier_names
  int active_dice = 1;

  void rollDice() {
    // ignore: avoid_print
    print('Roll Dice');
    // ignore: unnecessary_null_comparison
    if (DateTime.now().millisecond == null) {
      return;
    }

    setState(() {
      active_dice = 1 + (0 + DateTime.now().millisecond) % 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$active_dice.png',
          width: 200,
          height: 200,
        ),
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: rollDice,
          child: const BoxText(
            'Roll Dice',
          ),
        )
      ],
    );
  }
}
