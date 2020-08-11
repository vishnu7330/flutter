import 'package:flutter/material.dart';
//import 'ui/music.dart';
import "package:audioplayers/audio_cache.dart";
import 'package:audioplayers/audioplayers.dart';


// ignore: non_constant_identifier_names
AudioPlayer player =  AudioPlayer();
AudioCache audio =  AudioCache(fixedPlayer: player);
var play = false;
var pause = true;
var x = 1;

class SecondRoute extends StatelessWidget {
  @override

  Widget build(BuildContext context){
      
       return  Scaffold(
          appBar: AppBar(
           title: Title(color: Colors.blue,
            child: Text("Play Music",
             style: TextStyle(
               color: Colors.black,
             ),
            )),
           actions: <Widget>[
             Icon(Icons.library_music),
           ],
           backgroundColor: Colors.amber,
           leading: Image.asset('assets/images/music.jpg'),
         ),
         body: 
           Container(
          //alignment: Alignment.topLeft,
          width: double.infinity,
          height: double.infinity,
         // color: Colors.black,
         decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.fill,
               image: AssetImage("assets/images/back.jpg",),)
         ),
         child : Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children : <Widget>[ 
            Container(
           alignment: Alignment.topLeft,
            width: double.infinity,
            height: 250,
            padding: EdgeInsets.all(10),
           // color: Colors.blueAccent,
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  width: 150,
                  height: 100,
                  //color: Colors.black,
                  decoration: BoxDecoration(
                   image: DecorationImage(
                    fit: BoxFit.fill,
                     image: AssetImage("assets/images/butta.jpg"),),
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.black,
                  ),
                ),
                Container(
                 alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  width: 230,
                  height: 200,
                  //color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                       // alignment: Alignment.topLeft,
                        width: 250,
                        height: 50,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 3,
                            color: Colors.black
                          )
                         // color: Colors.black
                        ),
                        child: Center(
                           child: Text(
                          " butta bomma song",
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 70,
                        // /color: Colors.black,
                       
                        child : Card(
                          color: Colors.white70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.play_circle_filled),
                                 onPressed: (){
                                    if (play == false ){
                                    audio.play("butta.mp3");
                                     //player.play('https://masstamilan2019download.com/tamil/2018%20Tamil%20Mp3/Maari%202%20%282018%29/Rowdy%20Baby-Masstamilan.In.mp3');
                                     play = true;
                                     pause = false;
                                     x = 11;
                                     }
                                 }
                                 ),
                     IconButton(icon: Icon(Icons.pause_circle_outline),
                      onPressed: (){
                        if(x == 11){
                          // ignore: unnecessary_statements
                          player.pause;
                          play = false;
                          pause = true;
                          x = 1;
                        }
                        }
                         )
                            ],
                          ),
                        ),
                        ),
                    ]
                  ),
                  ),
              ],
            ),
            ),
            Container(
              width: 100,
              height: 50,
              child: RaisedButton(
                onPressed:() {
                Navigator.pop(context);
                },
                child: Text('Go back!'), 
                ),
            )
          ],
         ),
       )
    );
  }
}
