import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:minilaw/src/features/authentication/screen/homepage/homepage.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/img_strings.dart';


class mainScreen extends StatelessWidget {
  mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDarkcolor,
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(kbg2),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 150.0), // Adjust top padding as needed
                child: Image(
                  image: AssetImage(minilaw),
                  width: size.width * 0.8,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image(
                image: AssetImage(halfplanet),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: ()=>Get.to(HomePage()),
                child: Image(
                  image: AssetImage(playship),
                ),
              ),
            ),
          ],

        ),

      ),
    );
  }
}
