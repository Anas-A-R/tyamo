import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Color color;
  IconData? prefixIcon;
  Color? prefixIconColor;
  double? prefixIconSize;
  IconData? sufixIcon;
  Color? sufixIconColor;
  double? sufixIconSize;
  double? height;
  double? width;
  bool? obsecureText;
  

  CustomTextField({
    required this.labelText,
    required this.color,
    this.height,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixIconSize,
    this.sufixIcon,
    this.sufixIconColor,
    this.sufixIconSize,
    this.width,
    this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: width,
        height: height,
        color: color,
        child: TextField(
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.none,
          obscureText: obsecureText?? false,
          autofocus: false,
          style: TextStyle(fontSize: 20),
          keyboardType: TextInputType.visiblePassword,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            fillColor: color,
            filled: true,
            prefixIcon: Icon(prefixIcon, size: prefixIconSize),
            prefixIconColor: prefixIconColor,
            suffixIcon: Icon(sufixIcon,size: sufixIconSize,),
            suffixIconColor: sufixIconColor,
            label: Text(
              labelText,
            ),
            labelStyle: TextStyle(
                fontSize: 17, color: Colors.grey, fontWeight: FontWeight.w600),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ));
  }
}
