import 'package:cloud_firestore/cloud_firestore.dart';

class userModel{
  final String ? id;
  final String username;
  final String email;
  final String phoneNo;
  final String password;

  const userModel({
    this.id,
    required this.username,
    required this.email,
    required this.phoneNo,
    required this.password
  });

  toJson(){
    return{
      "Username" : username,
      "Email" : email,
      "Phone" : phoneNo,
      "Password" : password
    };
  }

  factory userModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return userModel(
        id: document.id,
        username: data["Username"],
        email: data["Email"],
        phoneNo: data["Phone"],
        password: data["Pasword"]
    );
  }
}