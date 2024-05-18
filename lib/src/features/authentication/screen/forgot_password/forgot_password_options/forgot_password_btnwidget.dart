import 'package:flutter/material.dart';

class forgetpasswordBtnwidget extends StatelessWidget {
  const forgetpasswordBtnwidget({
    required this.IcnBtn,
    required this.title,
    required this.subtitle,
    required this.onTap,
    super.key,
  });

  final IconData IcnBtn;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.deepPurple.shade100
        ),
        child: Row(
          children: [
            Icon(IcnBtn, size: 60.0),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(subtitle,
                  style: TextStyle(fontWeight: FontWeight.normal),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}