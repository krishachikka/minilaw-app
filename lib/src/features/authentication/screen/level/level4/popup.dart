import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/features/authentication/screen/homepage/homepage.dart';
import '../../../../../common_widgets/infoPopup.dart';

class LevelCompletedPopup extends StatelessWidget {
  final bool completed;

  LevelCompletedPopup({required this.completed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/frame.png'),
              ),
            ),
            child: completed
                ? AlertDialog(
              backgroundColor: Colors.transparent,
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage(klevelCompletedStar),
                    width: 150,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'CONGRATULATIONS bro!',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Level Completed.',
                    style: TextStyle(fontSize: 15.0, color: kWhiteColor),
                  ),
                ],
              ),
            )
                : AlertDialog(
              backgroundColor: Colors.transparent,
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage(klevelfailed),
                    width: 150,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'LEVEL FAILED dude:(',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Try again.',
                    style: TextStyle(fontSize: 15.0, color: kWhiteColor),
                  ),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => {
                  Get.to(()=>HomePage())
                // Get.to(LevelPlayPopup(levelImagePath: levelImagePath, levelNo: levelNo));
              },
                child: Image(
                  image: AssetImage(kreplaybtn),
                  height: 40,
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Get.to(()=>HomePage())
                  // Navigator.of(context).pop()
                },
                child: Image(
                  image: AssetImage(kcontinuebtn),
                  height: 40,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showInfoPopup(context,
                      lvl4info);
                },
                child: Image(
                  image: AssetImage(kinfobtn),
                  height: 60,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
