# minilaw

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Future<userModel> fetchuserDetails(String email) async{
final snapshot = await _firestore.collection("Users").where("Email" , isEqualTo: email).get();
final userData = snapshot.docs.map((e)=> userModel.fromSnapshot(e)).single;
return userData;
}

                    // SignupController.instance.Userregister(controller.email.text.trim(), controller.password.text.trim());
                    // SignupController.instance.phoneAuth(controller.phoneNo.text.trim());