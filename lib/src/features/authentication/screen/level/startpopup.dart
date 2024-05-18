import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/features/authentication/screen/level/level5/level5.dart';
import '../../../../constants/img_strings.dart';
import '../level/level1/level1.dart';
import 'level2/level2.dart';
import 'level3/level3.dart';
import 'level4/level4.dart';

class LevelPlayPopup extends StatelessWidget {
  final String levelImagePath;
  final int levelNo;

  LevelPlayPopup({required this.levelImagePath, required this.levelNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/frame.png'))
            ),
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Image(image: AssetImage(levelImagePath), width: 150,),
                  SizedBox(height: 10.0),
                  Text(
                    'LEVEL $levelNo',
                    style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Explore The Story.',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  switch (levelNo) {
                    case 1:
                      Get.to(()=>Levelone());
                      break;
                    case 2:
                      Get.to(()=>Leveltwo());
                      break;
                    case 3:
                      Get.to(()=>Levelthree());
                      break;
                    case 4:
                      Get.to(()=>Levelfour());
                      break;
                    case 5:
                      Get.to(()=>Levelfive());
                      break;
                    case 6:
                      Get.to(()=>Levelone());
                      break;
                    default:
                      break;
                  }
                },
                child: Image(image: AssetImage(kplaybtn), height: 40,),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image(image: AssetImage(kexitbtn), height: 40,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
