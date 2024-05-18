import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/repo/auth_repo/authrepo.dart';
import 'package:minilaw/src/repo/user_repo/userrepo.dart';

class phoneveriController extends GetxController {
  static phoneveriController get instance => Get.find();

  final phoneNo = TextEditingController();

  final UserRepo = Get.put(userRepo());

  final TextEditingController phoneNoController = TextEditingController();

  void sendOTP() async {
    String phoneNo = phoneNoController.text.trim();
    final User = await userRepo.instance.fetchuserPhone(phoneNo);
    if (User != null) {
      AuthenticationRepo.instance.verifyOTP(phoneNo);
    } else {
      Get.snackbar(
        "Error",
        "Phone number not found. Please sign up first.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.shade200.withOpacity(0.5),
        colorText: Colors.red,
      );
    }
  }



}
