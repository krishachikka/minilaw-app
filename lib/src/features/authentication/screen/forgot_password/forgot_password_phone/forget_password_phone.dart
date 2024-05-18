import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/features/authentication/controllers/phoneverificationcontroller.dart';
import 'package:minilaw/src/features/authentication/screen/forgot_password/forgot_password_otp/otpScr.dart';
import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../constants/sizes.dart';

class ForgetPasswordPhoneScr extends StatelessWidget {
  const ForgetPasswordPhoneScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(phoneveriController());
    final _formkey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kpurple,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: miniSplashContSize + 4),
                  FormHeaderWidget(
                    image: kforgotpasswordimg,
                    title: kforgot.toUpperCase(),
                    subtitle: kForgotPhonesub,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    heightBetween: 50.0,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller.phoneNo,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone_android_rounded, color: kWhiteColor),
                            labelText: kphone,
                            hintText: kphone,
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: kWhiteColor),
                            labelStyle: TextStyle(color: Colors.white54),
                          ),
                          style: TextStyle(color: kWhiteColor),
                        ),
                        const SizedBox(height: 40.0),
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                controller.sendOTP();
                              }
                              },
                            child: const Text(
                              knext,
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
