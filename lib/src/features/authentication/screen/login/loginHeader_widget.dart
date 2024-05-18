import 'package:flutter/material.dart';
import 'package:minilaw/src/constants/text_strings.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/img_strings.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(konB1), height: size.height*0.2),
        const Text(kloginTitle,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
            textAlign: TextAlign.center
        ),
        const Text(kloginSub,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w200,
              color: kWhiteColor,
            ),
            textAlign: TextAlign.center
        ),
      ],
    );
  }
}
