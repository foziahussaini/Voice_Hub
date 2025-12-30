import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(const VoiceHubApp());
}

class VoiceHubApp extends StatefulWidget {
  const VoiceHubApp({super.key});

  @override
  State<VoiceHubApp> createState() => _VoiceHubAppState();
}

class _VoiceHubAppState extends State<VoiceHubApp> {
  double sizedBox = 14;
  double width = 310;
  double height = 35;
  EdgeInsets padding = EdgeInsets.symmetric(horizontal: 22, vertical: 2,);
  List<String> titles = ["relief-stress", "stay-calm", "stress-manage", "time-manage", "time-task", "well-sleep"];
  String randomTitle = "stress-manage";
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  void generateRandomTitle(){
    setState(() {
      randomTitle = titles[Random().nextInt(titles.length)];
    });
  }

  void onLetterTap(String title){
    if(title == randomTitle){
      audioPlayer.open(
        Audio("assets/audio/$title.mp3"),);
      generateRandomTitle();
    }
  }

  GestureDetector buildNoteContainer({required String title,}){
    return GestureDetector(
      onTap: (){
        onLetterTap(title);},
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
          color: Colors.redAccent.shade100.withOpacity(0.2)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(title, style: TextStyle(fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic),),
          SizedBox(width: 26,),
          SizedBox(child:Row(children: [
            Icon(Icons.heart_broken,color: Colors.red.shade800, size: 18,),
            SizedBox(width: 2,),
            Icon(Icons.redo_outlined, size: 18,)
          ],),)
        ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.zero,
            width: 400,
            height: 800,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/wallpaper.jpg"), fit: BoxFit.cover),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    width: width,
                    height: 310,
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 4,),
                      decoration: BoxDecoration(color: Colors.red.shade100.withOpacity(0.3),
                      ),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/music.jpeg"), fit: BoxFit.cover),
                    ),
                    width: 260,
                    height: 205,
                  ),
                  SizedBox(height: 8,),
                  Text(randomTitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                  Text("_____________________", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  SizedBox(height: 6,),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.arrow_back_ios_new_rounded),
                    Icon(Icons.play_circle),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],)
                ],
              )),
                  SizedBox(height: 55,),
                  // first row
                  buildNoteContainer(title: "relief-stress"),
                  // second row
                  SizedBox(height: sizedBox,),
                  buildNoteContainer(title: "stay-calm"),
                  // 3rd row
                  SizedBox(height: sizedBox,),
                  buildNoteContainer(title: "stress-manage"),
                  // fourth row
                  // SizedBox(height: sizedBox,),
                  // buildNoteContainer(title: "D"),
                  // 5th row
                  SizedBox(height: sizedBox,),
                  buildNoteContainer(title: "time-manage"),
                  // 6th row
                  SizedBox(height: sizedBox,),
                  buildNoteContainer(title: "time-task"),
                  // 7th row
                  SizedBox(height: sizedBox,),
                  buildNoteContainer(title: "well-sleep"),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

