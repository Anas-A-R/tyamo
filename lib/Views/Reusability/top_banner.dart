import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  final String title;
  final List<Color> clr;
  TopBanner({required this.title, required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors:clr),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            fontSize: 20,
            color:Colors.white),
      ),
    );
  }
}
