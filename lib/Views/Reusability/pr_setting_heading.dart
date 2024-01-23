import 'package:flutter/material.dart';

class PrSettingHeading extends StatelessWidget {
  final String headingText;
  PrSettingHeading({required this.headingText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.centerLeft,
      child: Text(
       headingText,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color(0xff671AFC),
        ),
      ),
    );
  }
}
