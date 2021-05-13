import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded buildKey({Color color, int soundNo}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNo);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        child: null,
        // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2D2A2E),
        // backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNo: 1),
              buildKey(color: Colors.orange, soundNo: 2),
              buildKey(color: Colors.yellow, soundNo: 3),
              buildKey(color: Colors.green, soundNo: 4),
              buildKey(color: Colors.teal, soundNo: 5),
              buildKey(color: Colors.blue, soundNo: 6),
              buildKey(color: Colors.purple, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
