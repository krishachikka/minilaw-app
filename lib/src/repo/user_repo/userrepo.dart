import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/features/authentication/models/usermodel.dart';
import 'package:firebase_database/firebase_database.dart';


class userRepo extends GetxController {
  static userRepo get instance => Get.find();

  final _firestore = FirebaseFirestore.instance;
  final _realtimeDB = FirebaseDatabase.instance.reference();


  createUser(userModel user) async {
    try {
      // Write to Firestore
      await _firestore.collection("Users").add(user.toJson());

      // Write to Realtime Database
      await _realtimeDB.child('Users').push().set(user.toJson());

      Get.snackbar(
        "Success",
        "Your account has been created!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.shade200.withOpacity(0.5),
        colorText: Colors.green,
      );
    } catch (error, stackTrace) {
      Get.snackbar(
        "Error",
        "Something went wrong. Try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.shade200.withOpacity(0.5),
        colorText: Colors.red,
      );
      print(error.toString());
    }
  }


  Future<userModel?> fetchuserPhone(String phoneNo) async {
    final snapshot = await _firestore.collection("Users").where("Phone", isEqualTo: phoneNo).get();
    if (snapshot.docs.isNotEmpty) {
      final userData = snapshot.docs.map((e) => userModel.fromSnapshot(e)).single;
      return userData;
    } else {
      return null;
    }
  }

  Future<List<userModel>> allUserData() async{
    final snapshot = await _firestore.collection("Users").get();
    final userData = snapshot.docs.map((e)=> userModel.fromSnapshot(e)).toList();
    return userData;
  }

}
