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
                  player.play('note1.wav');
                },
                color: Colors.red,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note2.wav');
                },
                color: Colors.orange,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note3.wav');
                },
                color: Colors.yellow,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note4.wav');
                },
                color: Colors.green,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note5.wav');
                },
                color: Colors.lightBlue,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note6.wav');
                },
                color: Colors.blue,
                child: null,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note7.wav');
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
}
