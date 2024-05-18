import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:minilaw/src/features/authentication/screen/login/login.dart';
import 'package:minilaw/src/features/authentication/screen/onBoard/onBoard.dart';

import '../../../../loginpage.dart';
import '../screen/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    Get.to(onBoard());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}