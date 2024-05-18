import 'package:flutter/material.dart';

class MyLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/videos/loader.gif', // Replace 'loader.gif' with the path to your GIF file
        width: 200,
        height: 200,
      ),
    );
  }
}
