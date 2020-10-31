import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget xyloButton(Color col, String file) {
    return FlatButton(
      color: col,
      child: Text(''),
      onPressed: () => player.play(file),
    );
  }

  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              XyloButton(player: player),
              xyloButton(Colors.red, 'note1.wav'),
              xyloButton(Colors.orange, 'note2.wav'),
              xyloButton(Colors.yellow, 'note3.wav'),
              xyloButton(Colors.green, 'note4.wav'),
              xyloButton(Colors.blue, 'note5.wav'),
              xyloButton(Colors.indigo, 'note6.wav'),
              xyloButton(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}

class XyloButton extends StatelessWidget {
  final color;
  final file;
  final AudioCache player;

  const XyloButton(this.player, this.color, this.file);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color,
      child: Text(''),
      onPressed: () => player.play(file),
    );
  }
}
