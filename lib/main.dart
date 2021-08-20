import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ColoredBox(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: TextButton(onPressed: () {
                    playSound(5);
                  }),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo[400],
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo[800],
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
