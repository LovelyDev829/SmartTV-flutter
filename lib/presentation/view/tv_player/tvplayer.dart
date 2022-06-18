import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyTvScreen extends StatefulWidget {
  final String url;

   const MyTvScreen({Key? key, required this.url}) : super(key: key);

  @override
  _MyTvScreenState createState() => _MyTvScreenState();
}

class _MyTvScreenState extends State<MyTvScreen> {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.url);
    _chewieController = ChewieController(
      materialProgressColors: ChewieProgressColors(playedColor: Colors.blue),
      allowedScreenSleep: true,
      allowFullScreen: true,
      allowMuting: true,
      autoPlay: true,
      showControls: true,
      videoPlayerController: _controller!,
      aspectRatio: 2.2,
      autoInitialize: true,
      looping: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    /// TODO: implement dispose
    _controller!.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              child: Chewie(
                controller: _chewieController!,
              ),
              height: MediaQuery.of(context).size.height,
              width:  MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}


