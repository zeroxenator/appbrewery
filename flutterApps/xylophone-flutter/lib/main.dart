import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNb) {
    final player = AudioCache();
    player.play('note$soundNb.wav');
  }

  Expanded buildKey(int soundNb, Color soundColor, {String soundText = ''}) {
    return Expanded(
      child: FlatButton(
        color: soundColor,
        onPressed: () {
          playSound(soundNb);
        },
        child: Text(soundText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow, soundText: "You"),
              buildKey(4, Colors.green, soundText: "Are"),
              buildKey(5, Colors.blue, soundText: "Valid"),
              buildKey(6, Colors.indigo),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
