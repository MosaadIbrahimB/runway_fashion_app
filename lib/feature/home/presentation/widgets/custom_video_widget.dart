import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class CustomVideoWidget extends StatefulWidget {

  const CustomVideoWidget({super.key});

  @override
  CustomVideoWidgetState createState() => CustomVideoWidgetState();
}

class CustomVideoWidgetState extends State<CustomVideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset("assets/image/video.mov")
          ..setLooping(true)
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized,
            // even before the play button has been pressed.
            setState(() {
              _controller.play();
            });
          });
  }


  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Stack(
          children: [
            VideoPlayer(_controller),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 6.w),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70, width: 2.w),
                  ),
                  child: Center(
                    child: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
        : Container();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}

