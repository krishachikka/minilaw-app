import 'package:get/get.dart';
import 'package:minilaw/src/features/authentication/screen/onBoard/onBoard.dart';
import 'package:minilaw/src/repo/auth_repo/authrepo.dart';

class otpcontroller extends GetxController{
  static otpcontroller get instance => Get.find();

  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepo.instance.verifyOTP(otp);
    isVerified ? Get.offAll( onBoard()) : Get.back();
  }
}