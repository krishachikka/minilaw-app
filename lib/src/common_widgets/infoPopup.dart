import 'package:flutter/material.dart';

import '../constants/img_strings.dart';

void showInfoPopup(BuildContext context, String infoText) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Stack(
          children: [
            // Background dimmer
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            // Image popup
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                          alignment: Alignment.topRight,
                          child: Image(image: AssetImage(kclose), width: 35,)
                      ),
                    ),
                    Stack(
                      children: [
                        Image.asset(kinfobox),
                        Positioned(
                          top: 85,
                          left: 23,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.transparent,
                            width: 200,
                            height: 330,
                            child: SingleChildScrollView(
                              child: Text(
                                infoText,
                                style: TextStyle(
                                  color: Colors.brown,
                                  decoration: TextDecoration.none,
                                  fontSize: 20, // Adjust text size as needed
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
