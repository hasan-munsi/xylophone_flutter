import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play("note$sound.wav");
  }

  Widget keyBuild({Color col, int sound}) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                keyBuild(col: Colors.red, sound: 1),
                keyBuild(col: Colors.orange, sound: 2),
                keyBuild(col: Colors.yellow, sound: 3),
                keyBuild(col: Colors.green, sound: 4),
                keyBuild(col: Colors.teal, sound: 5),
                keyBuild(col: Colors.blue, sound: 6),
                keyBuild(col: Colors.purple, sound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
