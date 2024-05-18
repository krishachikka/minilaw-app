import 'package:flutter/material.dart';
import 'package:minilaw/src/constants/text_strings.dart';

import '../../constants/colors.dart';
import '../../constants/img_strings.dart';


class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.heightBetween,
    this.imgColor,
    this.imageHeight = 0.2,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String image,title,subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double? imageHeight;
  final double? heightBetween;
  final Color? imgColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image), height: size.height*0.2),
        SizedBox(height: heightBetween),
        Text(title,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
            textAlign: TextAlign.center
        ),
        Text(subtitle,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w200,
              color: kWhiteColor,

            ),
            textAlign: textAlign
        ),
      ],
    );
  }
}
