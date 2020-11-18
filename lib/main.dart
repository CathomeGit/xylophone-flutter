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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(noteIdx: 1, keyColor: Colors.red),
              buildKey(noteIdx: 2, keyColor: Colors.orange),
              buildKey(noteIdx: 3, keyColor: Colors.yellow),
              buildKey(noteIdx: 4, keyColor: Colors.green),
              buildKey(noteIdx: 5, keyColor: Colors.lightBlue),
              buildKey(noteIdx: 6, keyColor: Colors.blue),
              buildKey(noteIdx: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int index) {
    player.play('note$index.wav');
  }

  Expanded buildKey({int noteIdx, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteIdx);
        },
        color: keyColor,
        child: null,
      ),
    );
  }
}
