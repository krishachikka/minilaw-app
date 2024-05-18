import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minilaw/src/constants/img_strings.dart';
import '../../../../constants/colors.dart';
import 'loginFooter.dart';
import 'loginHeader_widget.dart';
import 'login_widget.dart';

class LoginScr extends StatelessWidget{
  LoginScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
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
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                loginHeader(size: size),
                LoginForm(),
                loginFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

