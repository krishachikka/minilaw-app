import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/features/authentication/screen/forgot_password/forgot_password_otp/otpScr.dart';
import '../../../../../common_widgets/form/form_Header_widget.dart';
import '../../../../../constants/sizes.dart';
import '../../mailverification/mailverification.dart';

class forgetPasswordMailScr extends StatelessWidget {
  const forgetPasswordMailScr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kpurple,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                SizedBox(height: miniSplashContSize+4),
                FormHeaderWidget(
                  image: kforgotpasswordimg,
                  title: kforgot.toUpperCase(),
                  subtitle: kForgotMailsub,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 50.0,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail_outline_rounded, color: kWhiteColor),
                              labelText: kemail,
                              hintText: kemail,
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(color: kWhiteColor),
                              labelStyle: TextStyle(color: Colors.white54)
                          ),
                          style: TextStyle(color: kWhiteColor),
                        ),
                        const SizedBox(height: 40.0),
                        SizedBox(
                            width: double.infinity ,
                            height: 50.0,
                            child: ElevatedButton(
                                onPressed: ()=> Get.to(mailverification()), child: const Text(knext, style: TextStyle(fontSize: 18.0))
                            ))
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
