import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/features/authentication/controllers/signupcontroller.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/usermodel.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.username,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined, color: kWhiteColor),
                labelText: kusername,
                hintText: kusername,
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: kWhiteColor),
                labelStyle: TextStyle(color: Colors.white54),
              ),
              style: TextStyle(color: kWhiteColor),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined, color: kWhiteColor),
                labelText: kemail,
                hintText: kemail,
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: kWhiteColor),
                labelStyle: TextStyle(color: Colors.white54),
              ),
              style: TextStyle(color: kWhiteColor),
              validator: (value) {
                if (value == null || value.isEmpty || !value.contains('@')) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone, color: kWhiteColor),
                labelText: kphone,
                hintText: kphone,
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: kWhiteColor),
                labelStyle: TextStyle(color: Colors.white54),
              ),
              style: TextStyle(color: kWhiteColor),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a phone number';
                }
                return null;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint, color: kWhiteColor),
                labelText: kpassword,
                hintText: kpassword,
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: kWhiteColor),
                labelStyle: TextStyle(color: Colors.white54),
              ),
              style: TextStyle(color: kWhiteColor),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return 'Please enter a password with at least 6 characters';
                }
                return null;
              },
            ),
            SizedBox(height: 18,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Create a userModel object with the form data
                    final user = userModel(
                      email: controller.email.text.trim(),
                      password: controller.password.text.trim(),
                      username: controller.username.text.trim(),
                      phoneNo: controller.phoneNo.text.trim(),
                    );

                    try {
                      SignupController.instance.createUser(user);
                      controller.Userregister(user.email, user.password);
                    } catch (error) {
                      print('Error during registration: $error');
                    }
                  }
                },
                child: Text(
                  ksignup.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: kDarkcolor,
                  side: const BorderSide(color: Colors.grey),
                  padding: EdgeInsets.symmetric(vertical: kbtnHeight),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
