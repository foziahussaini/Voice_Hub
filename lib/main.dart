import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(

        ),
      ),
    );
  }
}


