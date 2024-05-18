import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/repo/auth_repo/authrepo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screen/mainScreen/mainScreen.dart';


class mailverificationController extends GetxController {

  @override
  void onInit(){
    super.onInit();
    sendVerificationEmail();
  }

  Future<void> sendVerificationEmail() async {
    try{
      await AuthenticationRepo.instance.sendEmailVerification();
    }catch(e){
      Get.snackbar(
          kohSnap, e.toString(), snackPosition: SnackPosition.TOP
      );
    }
  }

  void setTimerForautoRedirect() {
    // Set a timer for auto redirection
    const duration = Duration(seconds: 5); // Set the duration for auto redirection (e.g., 5 seconds)
    Timer(duration, () {
      // Redirect the user to another screen after the specified duration
      // For example, you can navigate to the main screen
      Get.offAll(mainScreen());
    });
  }
  void manuallyCheckEmailVerificationStatus() {
    User? user = AuthenticationRepo.instance.auth.currentUser;
    if (user != null && user.emailVerified) {
      // Email is verified
      Get.snackbar(
        kohSnap,
        'Email is already verified',
        snackPosition: SnackPosition.TOP,
      );
    } else {
      // Email is not verified
      Get.snackbar(
        kohSnap,
        'Email is not verified',
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
