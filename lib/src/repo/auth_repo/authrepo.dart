import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:minilaw/src/exceptions/kexceptions.dart';
import 'package:minilaw/src/repo/exceptions/signup_emailpw_failure.dart';

import '../../features/authentication/screen/mainScreen/mainScreen.dart';
import '../../features/authentication/screen/welcome/welcome_screen.dart';


class AuthenticationRepo extends GetxController{
  static AuthenticationRepo get instance => Get.find();
  //variables for authentication

  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationID = ''.obs;


  @override
  void onReady() {
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    FlutterNativeSplash.remove();
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user){
    user == null ? Get.offAll(() => const welcomeScr()) : Get.offAll(() => mainScreen());
  }

  Future<void> phoneAuth(String phoneNo) async{
    await auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async{
          await auth.signInWithCredential(credential);
        },
        codeSent: (verificationID,resendToken){
          this.verificationID.value = verificationID;
        },
        codeAutoRetrievalTimeout: (verificationID){
          this.verificationID.value = verificationID;
        },
        verificationFailed: (e){
          if (e.code == 'invalid-phone-number'){
            Get.snackbar('Error', 'The provided phone number is not valid.');
          } else {
            Get.snackbar('Error', 'Something went wrong. Try Again.');
          }
        }
    );
  }

  Future<bool> verifyOTP(String otp) async{
    var credentials = await auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationID.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<UserCredential> createUserWithEmailandPassword(String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      final exp = signupwithEmailPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXP - ${exp.message}');
      throw exp;
    } catch(_){
      const exp = signupwithEmailPasswordFailure();
      print('EXCEPTION - ${exp.message}');
      throw exp;
    }
  }


  Future<void> sendEmailVerification() async{
    try {
      await auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      final exp = kExceptions.fromCode(e.code);
      throw exp.message;
    } catch(_){
      const exp = kExceptions();
      throw exp.message;
    }
  }

  // Future<void> loginUserWithEmailandPassword(String email, String password) async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  //     final user = FirebaseAuth.instance.currentUser;
  //     if (user == null || user.email == null) {
  //       print('User not registered with email/password. Please sign up.');
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     print('Error: ${e.message}');
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

  Future<void> loginUserWithEmailandPassword(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print('Firebase Auth Error: ${e.message}');
      throw e;
    } catch (e) {
      print('Error: $e');
      throw e;
    }
  }


  Future<void> logout() async {
    await auth.signOut();
  }
}