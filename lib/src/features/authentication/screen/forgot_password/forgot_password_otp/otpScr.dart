import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/features/authentication/controllers/otpcontroller.dart';

class otpScr extends StatelessWidget {
  const otpScr({super.key});

  @override
  Widget build(BuildContext context) {
    var OTPcontroller = Get.put(otpcontroller());
    var otp;
    return Scaffold(
      backgroundColor: kpurple,
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kotptitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0, color: kWhiteColor)),
            Text(kotpsub.toUpperCase() , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: kWhiteColor),),
            const SizedBox(height: 40.0),
            Text("$kotpmsg", textAlign: TextAlign.center, style: TextStyle(color: kWhiteColor),),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              cursorColor: kWhiteColor,
              textStyle: TextStyle(color: kWhiteColor),
              fillColor: Colors.white24,
              filled: true,
              onSubmit :(code){
                otp = code;
                otpcontroller.instance.verifyOTP(otp);
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: (){
                  otpcontroller.instance.verifyOTP(otp);
                },
                child: Text(knext, style: TextStyle(fontSize: 18.0),)
              )
            )
          ],
        ),
      ),
    );
  }
}
