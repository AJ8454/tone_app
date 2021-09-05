import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(AudioPlayer());

class AudioPlayer extends StatelessWidget {
  Expanded playButton(Color color, String track, String bttnName) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          final player = AudioCache();
          player.play(track);
        },
        child: Text(
          bttnName,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playButton(Colors.red, 'note1.wav', 'Click me'),
              playButton(Colors.orange, 'note2.wav', 'Click me'),
              playButton(Colors.yellow, 'note3.wav', 'Click me'),
              playButton(Colors.green, 'note4.wav', 'Click me'),
              playButton(Colors.greenAccent, 'note5.wav', 'Click me'),
              playButton(Colors.blue, 'note6.wav', 'Click me'),
              playButton(Colors.purple, 'note7.wav', 'Click me'),
            ],
          ),
        ),
      ),
    );
  }
}
