import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
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
                    'CONGRATULATIONS!',
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
                    'LEVEL FAILED :(',
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
                  showInfoPopup(context, 'In India, child marriage is against the law. It means that children who are too young to understand marriage and its responsibilities cannot get married. Boys have to be at least 21 years old and girls have to be at least 21 years old to get married. This is because marriage is a big responsibility, and children need to grow up, go to school, and be ready for it before they decide to get married.');
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
