import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: OutlinedButton(
          onPressed: () {
            final player = AudioPlayer();
             player.play(AssetSource('note1.wav'));
          },
          child: Text("Click me"),
        )),
      ),
    );
  }
}
