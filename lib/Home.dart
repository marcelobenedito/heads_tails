import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_tails/Result.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _displayResult() {
    var options = ["cara", "coroa"];
    int randomNumber = Random().nextInt(options.length);
    String result = options[randomNumber];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(result)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              child:  Image.asset("images/botao_jogar.png"),
              onTap: _displayResult,
            ),
          ],
        ),
      ),
    );
  }
}
