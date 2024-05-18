import 'package:flutter/material.dart';
import 'package:minilaw/src/features/authentication/models/modelOnBoard.dart';
import 'package:flutter/cupertino.dart';

class kOnBoardpageWidget extends StatelessWidget {
  const kOnBoardpageWidget({
    super.key,
    required this.model,
  });

  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(40.00),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height*0.4,),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: "Courier new",
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                model.subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Courier new",
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.count,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Courier new",
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50.0,)
        ],
      ),
    );
  }
}