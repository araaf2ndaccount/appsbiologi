import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Materi extends StatefulWidget {
  Materi() : super();

  final String title = "Video Demo";

  @override
  MateriState createState() => MateriState();
}

class MateriState extends State<Materi> {
  //
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/materi.mp4');
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Video Demo"),
        backgroundColor: Colors.blue[600],
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(children: <Widget>[
              Padding(padding: EdgeInsets.all(15.0)),
                Center(
                  child: Text(
                    "Klik Tombol Kanan Bawah Untuk Play / Pause",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              Padding(padding: EdgeInsets.all(25.0)),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent)
                ),
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              ),
              Padding(padding: EdgeInsets.all(25.0)),
                Container(
                width: 200,
                height: 100,
                child: Image.asset('assets/images/arrowup.png'),
              ),
            ]);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
