import 'package:flutter/material.dart';
import 'package:minilaw/src/common_widgets/loader.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key, required this.videoPath, required this.ontap}) : super(key: key);

  final String videoPath;
  final VoidCallback ontap;
  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  bool _isVideoEnded = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoPath)
      ..addListener(() {
        if (_videoPlayerController.value.position ==
            _videoPlayerController.value.duration) {
          // Video has ended
          setState(() {
            _isVideoEnded = true;
          });
        }
      });
    _initializeVideoPlayerFuture = _videoPlayerController.initialize().then((_) {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(false);
      setState(() {});
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_videoPlayerController.value.isPlaying) {
                        _videoPlayerController.pause();
                      } else {
                        _videoPlayerController.play();
                      }
                    });
                  },
                  child: AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController),
                  ),
                );
              } else {
                return Center(
                  child: MyLoader(),
                );
              }
            },
          ),
          if (_isVideoEnded)
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    widget.ontap();
                  },
                  child: Image(image: AssetImage(kcontinuebtn),),
                ),
              ),
            ),
          Positioned(
            top: 30,
            right: 16,
            child: Visibility(
              visible: !_isVideoEnded,
              child: GestureDetector(
                onTap: () {
                  _videoPlayerController.seekTo(_videoPlayerController.value.duration);
                },
                child: Image(image: AssetImage(kskipbtn), width: 60,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
