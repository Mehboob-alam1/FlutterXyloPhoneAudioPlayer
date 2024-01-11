import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int i){
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextButton(

              onPressed: () {
               playSound(1);
              },
              child: Text("Sound 1"),

            ),
            TextButton(

              onPressed: () {
               playSound(2);
              },
              child: Text("Sound 2"),

            ),
            TextButton(

              onPressed: () {
                playSound(3);
              },
              child: Text("Sound 3"),

            ),
            TextButton(

              onPressed: () {
               playSound(4);
              },
              child: Text("Sound 4"),

            ),
            TextButton(

              onPressed: () {
                playSound(5);
              },
              child: Text("Sound 5"),

            ),
            TextButton(

              onPressed: () {
                playSound(6);
              },
              child: Text("Sound 6"),

            ),
            TextButton(

              onPressed: () {
              playSound(7);
              },
              child: Text("Sound 7"),

            ),

          ],
        ),
      ),
    );
  }
}
