import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 400,
            height: 800,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red[300]!,
                Colors.deepOrange.shade200, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
            ),
            child: Column( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 88,),
                // first row
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(decoration: BoxDecoration(color: Colors.green),
                      width: 120,),
                    Container(
                      decoration: BoxDecoration(
                      ),
                      width: 204,
                        child: Image.asset("assets/images/bg4.png", width: 350, height: 220, fit: BoxFit.cover,)),
                  ],
                ),
                SizedBox(height: 54,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 22),
                      decoration: BoxDecoration(),
                      child: Icon(Icons.play_circle_filled_rounded,color: Colors.purple.shade500, size: 80,
                        shadows: [Shadow(blurRadius: 20, color: Colors.purple.shade700)],),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      decoration: BoxDecoration(),
                      width: 260,
                        child: Text("Voice Hub", style: GoogleFonts.lobster(fontSize: 44, fontWeight: FontWeight.bold),)),
                    Container(
                      width: 60,
                    )
                  ],
                ),
                SizedBox(height: 7,),
                Row( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 17),
                        decoration: BoxDecoration(),
                        width: 250,
                        child: Text("listen to the \npodcast and feel relax",
                          style: GoogleFonts.alegreya(fontSize: 22, fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(height: 38,),
                Icon(Icons.more_horiz, color: Colors.purple, fontWeight: FontWeight.bold, size: 38,),
                SizedBox(height: 17,),
                Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 12,
                          backgroundColor: Colors.purple.shade100, shadowColor: Colors.deepOrange.shade100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))) ,
                      onPressed: (){
                      },
                        child: Text("log in", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                        ),
                    SizedBox(width: 43,),
                    ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(elevation: 12,
                        backgroundColor: Colors.purple.shade100, shadowColor: Colors.deepOrange.shade100,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))) ,
                        child: Text("Sign Up", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),)),
                  ],),
                SizedBox(height: 12,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
