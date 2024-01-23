import 'package:flutter/material.dart';

class TwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Color? text_clr;
  final Color? card_color;
  final Widget? sub_widget;
  final String? second_text;
  final String? second_value;

  TwoValueCard({required this.text,required this.value,this.text_clr, this.card_color, this.sub_widget,this.second_text,this.second_value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Card(
        color: card_color?? Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
             text,
             textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              value,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: text_clr ?? Color.fromARGB(255, 111, 190, 199)),
            )
          ],
        ),
      ),
    );
  }
}
