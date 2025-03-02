import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee', 
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void randomizeDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: OutlinedButton(
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              onPressed: (){
                randomizeDice();
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.transparent)
              ),
            )
          ),
          Expanded(
            child: OutlinedButton(
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              onPressed: (){
                randomizeDice();
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.transparent)
              ),
            ),
          ),
        ],
      ),
    );
  }
}