import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import 'package:minilaw/src/repo/auth_repo/authrepo.dart';
import '../../controllers/mailverificationController.dart';

class mailverification extends StatelessWidget {
  const mailverification({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(mailverificationController());
    return Scaffold(
      backgroundColor: kpurple,
      body: SingleChildScrollView(
        child: Padding (
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 100.0,),
              const Icon(LineAwesomeIcons.envelope_open, size: 100,color: kWhiteColor,),
              const SizedBox(height: 30.0,),
              Text(kmailVerify, style: TextStyle(fontWeight: FontWeight.bold, color: kWhiteColor, fontSize: 30)),
              const SizedBox(height: 20.0,),
              Text(kmailVerifysub1.tr, style: TextStyle(fontSize: kDefaultFontSize, color: kWhiteColor), textAlign: TextAlign.center,),
              const SizedBox(height: 20.0,),
              Text(kmailVerifysub2.tr, style: TextStyle(fontSize: kDefaultFontSize, color: kWhiteColor), textAlign: TextAlign.center,),
              const SizedBox(height: 40.0,),
              SizedBox(
                width: 200,
                height: 50,
                child: OutlinedButton(child: Text(kcontinue.tr, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                    onPressed: ()=> controller.manuallyCheckEmailVerificationStatus(),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
                ),
              ),
              const SizedBox(height: 40.0,),
              TextButton(onPressed: ()=> controller.sendVerificationEmail(), child: Text(klinkresend.tr, style: TextStyle(fontSize: 18))),
              TextButton(onPressed: () {AuthenticationRepo.instance.logout();},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(LineAwesomeIcons.alternate_long_arrow_left),
                      const SizedBox(width: 5,),
                      Text(kbacklogin.tr.toLowerCase(), style: TextStyle(fontSize: 18),),
                    ],))
            ],
          ),
        ),
      ),
    );
  }
}
