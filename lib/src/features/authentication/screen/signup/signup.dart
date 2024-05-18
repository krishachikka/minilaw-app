import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/common_widgets/form/form_Header_widget.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/features/authentication/screen/login/login.dart';
import 'package:minilaw/src/features/authentication/screen/signup/signupForm_widget.dart';

import '../../../../constants/colors.dart';

class SignupScr extends StatelessWidget{
  const SignupScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkcolor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kbg),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(image: konB1, title: kSignupTitle, subtitle: kSignupSub),
                SignupForm(),
                Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          SizedBox(height: 10,),
                          TextButton(onPressed: (){
                            Get.to(()=> LoginScr());
                          },
                            child: const Text.rich(
                              TextSpan(
                                text: kalrdyhaveanacc,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                children: const[
                                  TextSpan(
                                    text: klogin,
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                            SizedBox(height: 50),

                          ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}