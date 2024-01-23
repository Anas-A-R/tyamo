import 'package:flutter/material.dart';
class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading({required this.mainText,required this.subText,required this.logo,required this.fontSize,required this.logoSize});
  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 20,),

                Row(
                    children: [
                      Text(
                        mainText,
                      style: TextStyle(fontSize: fontSize,color:Color.fromARGB(255, 11, 5, 60),fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: logoSize,
                        width: logoSize,
                        child: Image.asset(logo,filterQuality: FilterQuality.high,),
                      ),
                    ],//row children
                  ),
                    Text(
                      subText,
                    style: TextStyle(fontSize: fontSize,color:Color.fromARGB(255, 11, 5, 60),fontWeight: FontWeight.bold),),
                ],);
  }
}