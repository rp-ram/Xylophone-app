import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {

    void playSound(int note)
    {
      final player = AudioPlayer();
      player.play(AssetSource('note$note.wav'));
    }

    Expanded player(int note,Color c)
    {
      return Expanded(
        child: TextButton(onPressed: () {
          setState(() {
            playSound(note);
          });
        },
          style: TextButton.styleFrom(backgroundColor: c,),
          child: Container(),
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: const Center(
            child: Text('Xylophone'),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              player(1,Colors.red),
              player(1,Colors.orange),
              player(1,Colors.yellow),
              player(1,Colors.green),
              player(1,Colors.lightBlue),
              player(1,Colors.blueAccent),
              player(7, Colors.brown)
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
