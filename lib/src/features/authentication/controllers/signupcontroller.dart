import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/features/authentication/models/usermodel.dart';
import 'package:minilaw/src/repo/user_repo/userrepo.dart';
import '../../../repo/auth_repo/authrepo.dart';
import '../screen/forgot_password/forgot_password_otp/otpScr.dart';


class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final username = TextEditingController();
  final phoneNo = TextEditingController();

  final UserRepo = Get.put(userRepo());


  // Future<void> Userregister (String email, String password) async {
  //   await AuthenticationRepo.instance.createUserWithEmailandPassword(email, password);
  // }

  Future<void> Userregister (String email, String password) async {
    try {
      await AuthenticationRepo.instance.createUserWithEmailandPassword(email, password);
    } catch (error) {
      // Handle any errors that occur during registration
      print('Error during registration: $error');
    }
  }



  Future<void> createUser(userModel user) async {
    try {
      // Register user with email and password
      await UserRepo.createUser(user);
      await SignupController.instance.Userregister(user.email, user.password);

      // Wait for email/password authentication to complete
      await FirebaseAuth.instance.authStateChanges().firstWhere((user) => user != null);

      // Proceed with phone authentication
      phoneAuth(user.phoneNo);
      Get.to(() => const otpScr());
    } catch (error) {
      // Handle any errors that occur during registration
      print('Error during registration: $error');
      // You may want to show an error message to the user
    }
  }


  void phoneAuth(String phoneNo){
    AuthenticationRepo.instance.phoneAuth(phoneNo);
  }
}

