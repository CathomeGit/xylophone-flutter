import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = new AudioCache();
  final Map<int, Color> buttonProps = {
    1: Colors.red,
    2: Colors.orange,
    3: Colors.yellow,
    4: Colors.green,
    5: Colors.lightBlue,
    6: Colors.blue,
    7: Colors.purple
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: createFromProps(buttonProps),
          ),
        ),
      ),
    );
  }

  void playSound(int index) {
    player.play('note$index.wav');
  }

  List<Expanded> createFromProps(Map<int, Color> buttonProps) {
    return buttonProps.entries
        .map((e) => Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(e.key);
                },
                child: Container(color: e.value),
              ),
            ))
        .toList();
  }
}
