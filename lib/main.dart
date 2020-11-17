import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = new AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.yellow,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.green,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.lightBlue,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.blue,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.purple,
                child: null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int index) {
    player.play('note$index.wav');
  }
}
