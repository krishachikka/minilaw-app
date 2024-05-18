import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/features/authentication/screen/level/level2/quiz_screen.dart';
import '../videoplayerwidget.dart';

class Leveltwo extends StatelessWidget {
  const Leveltwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            kbg,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: () => {Get.to(VideoPlayerWidget(videoPath: 'assets/videos/ChildMarriage.mp4',ontap: () => Get.to(() => QuizScreen())))},
            // onTap: () => {Get.to(LevelCompletedPopup(completed: true,))},
            child: Image(image: AssetImage(kstartbtn),height: 50,),
          )
        ],
      ),
    );
  }
}
