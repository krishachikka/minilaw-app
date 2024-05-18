import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../repo/auth_repo/authrepo.dart';
import '../screen/mainScreen/mainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginController extends GetxController {

  final email = TextEditingController();
  final password = TextEditingController();
  final localStorage = GetStorage();
  GlobalKey<FormState> loginformkey = GlobalKey<FormState>();
  final hidePassword = true.obs;
  final rememberme = false.obs;

  Future<void> login() async {
    try {
      await AuthenticationRepo.instance.loginUserWithEmailandPassword(email.text.trim(), password.text.trim());
      Get.offAll(mainScreen());
    } catch (error) {
      print('Error during login: $error');
      String errorMessage = 'Invalid email or password';
      if (error is FirebaseAuthException) {
        errorMessage = error.message ?? 'An error occurred during login';
      }
      // Show error message to the user
      Get.snackbar(
        'Error',
        errorMessage,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

}