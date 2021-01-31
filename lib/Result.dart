import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String result;
  Result(this.result);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/moeda_${widget.result}.png"),
            GestureDetector(
              child:  Image.asset("images/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
