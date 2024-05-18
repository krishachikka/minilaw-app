import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:minilaw/src/features/authentication/screen/signup/signup.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/img_strings.dart';
import '../../../../constants/text_strings.dart';

class loginFooter extends StatelessWidget {
  const loginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const Text("OR", style: TextStyle(color: kWhiteColor),),

        // SizedBox(
        //   width: double.infinity,
        //   height: 50,
        //   child: OutlinedButton.icon(
        //     icon: Image(image: AssetImage(kgoogle), height: 15.0,),
        //     onPressed: (){},
        //     label: Text("Sign-in with GOOGLE", style: TextStyle(fontSize: 15),),
        //     style: OutlinedButton.styleFrom(
        //         side: const BorderSide(color: kWhiteColor),
        //         foregroundColor: kWhiteColor
        //     ),
        //   ),
        // ),
        SizedBox(height: 15,),
        TextButton(onPressed: ()=> Get.to(SignupScr()),
          child: const Text.rich(
            TextSpan(
              text: kdonthaveanacc,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
              children: const[
                TextSpan(
                  text: ksignup,
                  style: TextStyle(color: kWhiteColor),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 85),
      ],
    );
  }
}