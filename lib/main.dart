import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSounds(int a) {
    final player = AudioPlayer();
    player.play(AssetSource('note$a.wav'));
    print('button $a pressed');
  }
  Expanded tiles(int no,Color col){
    return Expanded(
      child: Container(
        color: col,
        child: TextButton(
          onPressed: () {
            playSounds(no);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tiles(1,Colors.red),
              tiles(2,Colors.orange),
              tiles(3,Colors.yellow),
              tiles(4,Colors.green),
              tiles(5,Colors.green.shade900),
              tiles(6,Colors.blue),
              tiles(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
