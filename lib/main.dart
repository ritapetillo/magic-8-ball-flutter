import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage()
      ),
    );

  class BallPage extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: Colors.blue[600],
          appBar: AppBar(
              backgroundColor: Colors.blue[800],
              title: Text(
                'Ask me anything',
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
          body: Ball(),
        );
    }
  }  

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
  });}
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children:[Expanded(
            child: TextButton(
                onPressed: changeBall, child: Image.asset('images/ball$ballNumber.png')))]));
  }
}
