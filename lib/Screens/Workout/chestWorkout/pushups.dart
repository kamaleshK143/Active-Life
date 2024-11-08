import 'package:flutter/material.dart';
import "package:video_player/video_player.dart";
class pushups extends StatefulWidget {
  const pushups({super.key});

  @override
  State<pushups> createState() => _pushupsState();
}

class _pushupsState extends State<pushups> {
 VideoPlayerController? controller;
   String asset = "assets/chest/pushups.mp4";
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..initialize().then((_) {
        setState(() {});
      });
    controller!.play();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(),
          controller!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: controller!.value.aspectRatio,
                  child: VideoPlayer(controller!),
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          if (controller!.value.isPlaying) {
            controller!.pause();
          } else {
            controller!.play();
          }
        });
      },child: Icon(
        controller!.value.isPlaying?
        Icons.pause:
        Icons.play_arrow
      ),
      ),
    );
  }
}
