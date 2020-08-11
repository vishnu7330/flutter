import 'package:flutter/material.dart';
import 'ui/music.dart';
// ignore: unused_import
import 'ui/video.dart';
// ignore: unused_import
import "package:audioplayers/audio_cache.dart";
// ignore: unused_import
import 'package:audioplayers/audioplayers.dart';



 void main(){
    runApp(   MaterialApp( 
      title: 'Navigation Basics',
    home : FirstRoute()
    ),
    );
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps'),
      ),

body:  
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             Column(
               children: <Widget>[
                 Container(
                 alignment: Alignment.center,
                 width: 100,
                 height: 80,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   image: DecorationImage(
                     image: AssetImage('assets/images/music.jpg'),
                     fit: BoxFit.fill
                     ),
                    // borderRadius: BorderRadius.all(10)
                 ),
                 ),
                  Container(
                   child: RaisedButton(
                  child: Text('play music'),
                  onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                 ),
                  ),
        
               ],
             ),
              Column(
               children: <Widget>[
                 Container(
                 alignment: Alignment.center,
                 width: 100,
                 height: 80,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   image: DecorationImage(
                     image: AssetImage('assets/images/images.png'),
                     fit: BoxFit.fill
                     ),
                    // borderRadius: BorderRadius.all(10)
                 ),
                 ),
                  Container(
                   child: RaisedButton(
                  child: Text('Video'),
                  onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()),
                    );
                  },
                 ),
                  ),
        
               ],
             ),
             
             
           ],
  
  
         ),
    );
  }
}

