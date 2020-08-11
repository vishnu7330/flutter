import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget{

  Widget build(BuildContext context){
       
       return VideoApp();
  }
}
    
    
class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;

  

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
           'assets/alavai.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.setLooping(true);
      });
  }
  var  play = false;
  var pause = true;

  @override
  Widget build(BuildContext context) {
    var center =  Center(
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        );
         //return MaterialApp(
         // title: 'Video Demo',
          return Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text("video_ app"),
              backgroundColor: Colors.red.shade300,
              leading: Image.asset('assets/video.png'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[ 
                center,
               Container(
              alignment: Alignment.center,
              width: 100,
              height: 35,
              color: Colors.amberAccent,
              //padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.play_circle_outline), onPressed: (){
                    if(play== false){
                      play = true;
                      pause = false;
                      _controller.play();
                    }
                  }),
                  IconButton(icon: Icon(Icons.pause_circle_outline), onPressed: (){
                    if ( play == true){
                      play = false;
                      pause = true;
                      _controller.pause();
                    }
                  })
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 100,
              height: 50,
               child: RaisedButton(
                onPressed: () {
                Navigator.pop(context);
                },
                child: Text('Go back!'),
               ),
            ),
        ]
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}


