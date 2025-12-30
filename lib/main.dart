import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const VoiceHubApp());
}

class VoiceHubApp extends StatefulWidget {
  const VoiceHubApp({super.key});

  @override
  State<VoiceHubApp> createState() => _VoiceHubAppState();
}

class _VoiceHubAppState extends State<VoiceHubApp> {
  double sizedBox = 20;
  List<String> titles = ["stress Management", "time Management","focus management"];
  late var title1 = titles[0];
  late var title2 = titles[1];
  late var title3 = titles[2];
  // var episode= false;

  // void displayTitles(){
  //   setState(() {
  //     displayTitles = titles[Random().nextInt(titles.length)];
  //   });
  // }

  // void onIconTap(String titles){
  //     if(episode = titles[0] as bool){
  //       setState(() {
  //         episode = true;
  //       });
  //   }
  // }

  Container buildNoteContainer({required String text,}){
    return Container(
      width: 300,
      height: 90,
      margin: EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.red.shade100.withOpacity(0.7),
        borderRadius: BorderRadius.circular(16),),
      child: Row(
        children: [
          Text(text,
            style: GoogleFonts.aclonica(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple.shade800),),
          SizedBox(width: 34,),
          Icon(Icons.arrow_drop_down,size: 30,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.brown.shade100,
          toolbarHeight: 80,
          title: Center(child: Text("Choose a Title", style: GoogleFonts.alkalami(fontSize: 30, color: Colors.black),)),),
        body: SafeArea(child: Center(
          child: Container(
            margin: EdgeInsets.zero,
            width: 410,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bg3.jpg"),),
            ),
            child: Column(
              children: [
                SizedBox(height: 70,),
      // first container
                GestureDetector(onTap: (){
                }, child: buildNoteContainer(text: title1)),
      SizedBox(height: sizedBox,),
      // mini title
      //           if(episode) Container(
      //     width: 290,
      //     margin: EdgeInsets.only(left: 16, right: 16),
      //     padding: EdgeInsets.only(left: 16, right: 16),
      //     decoration: BoxDecoration(
      //       color: Colors.red.shade100.withOpacity(0.7),
      //       borderRadius: BorderRadius.circular(16),
      //     ),
      //     child:Column(
      //       children: [
      //         Text("Micromanagement",
      //           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.purple.shade800),),
      //         Text("Secret Weapon for Mental Health",
      //           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.purple.shade800),),
      //         Text("Managing Workplace Stress",
      //           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.purple.shade800),),
      //         Text("Stress Relief Guid",
      //           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.purple.shade800),),
      //       ],),),
      //  second container
                GestureDetector(onTap: (){}, child: buildNoteContainer(text: title2)),
      SizedBox(height: sizedBox,),
      //  3rd container
                GestureDetector(onTap: (){}, child: buildNoteContainer(text: title3)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

