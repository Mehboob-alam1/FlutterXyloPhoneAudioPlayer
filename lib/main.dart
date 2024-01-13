import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded playBuildKey({Color? color, int? sound}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
          backgroundColor: MaterialStateProperty.all<Color>(
              color!), // Set your desired background color
        ),
        onPressed: () {
          playSound(sound!);
        },
        child: Text(
            style: TextStyle(
              color: Colors.white,
            ),
            ""),
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
              playBuildKey(color: Colors.black, sound: 1),
              playBuildKey(color: Colors.red, sound: 2),
              playBuildKey(color: Colors.blue, sound: 3),
              playBuildKey(color: Colors.orange, sound: 4),
              playBuildKey(color: Colors.purple, sound: 5),
              playBuildKey(color: Colors.yellow, sound: 6),
              playBuildKey(color: Colors.pinkAccent, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
