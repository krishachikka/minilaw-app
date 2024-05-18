import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';
import '../../mailverification/mailverification.dart';
import '../forgot_password_mail/forget_password_mail.dart';
import '../forgot_password_phone/forget_password_phone.dart';
import 'forgot_password_btnwidget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          color: kpurple,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(kforgotpasswordtitle,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: kWhiteColor)
            ),
            Text(kforgotpasswordsub,
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                  color: kWhiteColor),
            ),
            const SizedBox(height: 20.0),
            forgetpasswordBtnwidget(
              IcnBtn: Icons.mail_outline_rounded,
              title: kemail,
              subtitle: kResetviaemail,
              onTap: (){
                Navigator.pop(context);
                Get.to( () => forgetPasswordMailScr());
                },
            ),
            const SizedBox(height: 20.0),
            forgetpasswordBtnwidget(
              IcnBtn: Icons.mobile_friendly_rounded,
              title: kphone,
              subtitle: kResetviaPhone,
              onTap: (){
                Navigator.pop(context);
                Get.to( () => ForgetPasswordPhoneScr());
              },
            ),
          ],
        ),
      ),
    );
  }

}