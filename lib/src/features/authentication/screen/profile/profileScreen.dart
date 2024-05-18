import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:minilaw/src/constants/colors.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import '../../../../repo/auth_repo/authrepo.dart';

class ProfileScr extends StatelessWidget {
  const ProfileScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kpurple,
      appBar: AppBar(
        backgroundColor: kpurple,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            },
          icon: const Icon(LineAwesomeIcons.angle_left, color: kWhiteColor,),
        ),
        title: Text(kProfile, style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(35),
                decoration: BoxDecoration(image: DecorationImage( image: AssetImage(kcircle), fit: BoxFit.cover) ),
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(kpfp),
                ),
              ),
              SizedBox(height: 50),
              Text(
                'krisha',
                style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10),
              Text(
                'chikkakrisha@gmail.com',
                style: TextStyle(color: kWhiteColor, fontSize: 16),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10),
              Text(
                '+911234567890',
                style: TextStyle(color: kWhiteColor, fontSize: 16),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () => {
                  AuthenticationRepo.instance.logout(),
                },
                child: Image(image: AssetImage(logoutbtn),height: 80,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
