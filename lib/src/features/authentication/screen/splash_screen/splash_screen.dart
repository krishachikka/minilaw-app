import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:minilaw/src/features/authentication/screen/homepage/homepage.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/sizes.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/features/authentication/controllers/splashscreencontroller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: kDarkcolor,
      body: Center(
        child: Stack(
          children: [
              Obx(
                ()=> AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  top: splashController.animate.value ? -50 : -60,
                  left: splashController.animate.value ? -95 : -120,
                  width: 300,
                  height: 270,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1200),
                    opacity: splashController.animate.value ?1 : 0,
                        child: Image(
                          image: AssetImage(kSplashblob),
                        ),
                  ),
                ),
              ),
              Obx(
                ()=> AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  left: splashController.animate.value ? 29 : -200,
                  top: 260,
                  width: 300,
                  height: 300,
                   child: AnimatedOpacity(
                     duration: const Duration(milliseconds: 1200),
                     opacity: splashController.animate.value ?1 : 0,
                        child: Image(
                          image: AssetImage(kLogo),
                        ),
                   ),
                  ),
              ),

              // Obx(
              //   ()=> AnimatedPositioned(
              //     duration: const Duration(milliseconds: 1600),
              //     bottom: splashController.animate.value ? (MediaQuery.of(context).size.height / 2) - 180 : 0,
              //     right: MediaQuery.of(context).size.width / 2 - 100 ,
              //     width: 200,
              //     height: 150,
              //     child: AnimatedOpacity(
              //       duration: const Duration(milliseconds: 1600),
              //       opacity: splashController.animate.value ?1 : 0,
              //       child: Align(
              //       alignment: Alignment.center,
              //       child: Text(
              //             kAppName,
              //             style: TextStyle(
              //               color: Color(0xFFd7cdcc),
              //               fontSize: 50,
              //               fontFamily: "Courier new",
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //       ),
              //     ),
              //   ),
              // ),

              Obx(
                ()=> AnimatedPositioned(
                  duration: const Duration(milliseconds: 1200),
                  bottom: splashController.animate.value ? 40 : -100,
                  right: appDefaultsize,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1200),
                    opacity: splashController.animate.value ?1 : 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kThirdColor,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
