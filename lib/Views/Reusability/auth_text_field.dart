import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obsecureText;
  final IconData icon;
  final double size;
  final TextEditingController controller;

  AuthTextField({
    required this.keyboardType,
    required this.labelText,
    required this.obsecureText,
    required this.icon,
    required this.size,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obsecureText,
      autofocus: false,
      style: TextStyle(fontSize: size),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Color.fromARGB(255, 217, 222, 225),
        filled: true,
        prefixIcon: Icon(icon, size: size),
        prefixIconColor: Color.fromARGB(255, 11, 5, 60),
        label: Text(labelText),
        labelStyle: TextStyle(fontSize: size, color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
