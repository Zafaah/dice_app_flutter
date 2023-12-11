import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: _DiceePage(),
    ),
  ));
}

class _DiceePage extends StatefulWidget {
  const _DiceePage({super.key});

  @override
  State<_DiceePage> createState() => __DiceePageState();
}

class __DiceePageState extends State<_DiceePage> {
  int diceCalculate = 1;
  int diceCalculateR = 1;
  void getdata() {
    setState(() {
      diceCalculateR = Random().nextInt(6) + 1;
      diceCalculate = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                getdata();
              },
              child: Image.asset('images/dice$diceCalculate.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                getdata();
              },
              child: Image.asset('images/dice$diceCalculateR.png'),
            ),
          ),
        ],
      ),
    );
  }
}
