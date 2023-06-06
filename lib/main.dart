import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Center(
              child: Text(
                'Magic 8 Ball',
                style: TextStyle(
                  color: Colors.white, // Set the text color to white
                ),
              ),
            ),
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  @override
  int random = 1;
  rando() {
    setState(() {
      random = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          rando();
        },
        child: Image.network("images/ball$random.png"),
      ),
    );
  }
}
