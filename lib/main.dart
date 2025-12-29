import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const VoiceHubApp());
}

class VoiceHubApp extends StatefulWidget {
  const VoiceHubApp({super.key});

  @override
  State<VoiceHubApp> createState() => _VoiceHubAppState();
}

class _VoiceHubAppState extends State<VoiceHubApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent.shade100,
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(36),
              bottomLeft: Radius.circular(36),),),
          title: Text("Choose any Title", style: GoogleFonts.alkalami(fontSize: 28, color: Colors.purple.shade900),),),
        body: SafeArea(child: Center(
          child: Container(
            margin: EdgeInsets.zero,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bg3.jpg")),
            ),
            child: Column(

            ),
          ),
        ),
      ),
      )
    );
  }
}


