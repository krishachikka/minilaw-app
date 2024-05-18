import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import '../../controllers/levelController.dart';
import '../profile/profileScreen.dart';
import 'scrollable_levels.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(LevelCompletionController());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'MINILAW',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple.shade100,
              fontFamily: 'Courier New',
            ),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          actions: <Widget>[
            GestureDetector(
              onTap: ()=> Get.to(ProfileScr()),
              child: Image( image: AssetImage(menubtn),),
            )
          ],
        ),
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                kbg,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: ScrollableLevels(),
            ),
          ],
        ),
    );
  }
}
