import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/sizes.dart';
import 'package:minilaw/src/constants/text_strings.dart';

import '../../../../../loginpage.dart';
import '../login/login.dart';
import '../signup/signup.dart';

class welcomeScr extends StatelessWidget{
  const welcomeScr({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kDarkcolor,
      body: Container(
        padding : EdgeInsets.all(appDefaultsize),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(kbg2),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image(image: AssetImage(KwelcomeScr), height: size.height*0.3,),
                Text(
                  kWlcmLine,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "",
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                      onPressed: ()=> Get.to(LoginScr()),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                        padding: EdgeInsets.symmetric(vertical: kbtnHeight),
                      ),
                      child: Text("LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                      onPressed: ()=> Get.to(SignupScr()),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: kWhiteColor),
                        padding: EdgeInsets.symmetric(vertical: kbtnHeight),
                        foregroundColor: Colors.black
                      ),
                      child: Text("SIGNUP",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}