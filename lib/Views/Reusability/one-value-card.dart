import 'package:flutter/material.dart';

class OneValueCard extends StatelessWidget {
  final String value;
  final Color? card_clr;
  final Color? text_clr; 

  OneValueCard({required this.value,this.text_clr,this.card_clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        color: card_clr ?? Colors.cyan,
        elevation: 10,
        child: Align(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: text_clr ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}