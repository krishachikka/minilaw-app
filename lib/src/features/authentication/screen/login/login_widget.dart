import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/colors.dart';
import '../../controllers/logincontroller.dart';
import '../forgot_password/forgot_password_options/forget_password_modal.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
        key: controller.loginformkey,
        child: Padding (
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined, color: kWhiteColor),
                  labelText: 'Email',
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(color: kWhiteColor),
                  labelStyle: TextStyle(color: Colors.white54),
                ),
                style: TextStyle(color: kWhiteColor),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.0,),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint, color: kWhiteColor),
                    labelText: 'Password',
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.white54),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp, color: kWhiteColor)
                ),
                style: TextStyle(color: kWhiteColor),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 10.0,),

              // FORGET BUTTON
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: Text(
                    'Forgot Password?', style: TextStyle(fontSize: 15),
                  ),
                ),
              ),

              SizedBox(height: 20.0,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text(
                    'Login'.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: kDarkcolor,
                    side: BorderSide(color: Colors.grey),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
