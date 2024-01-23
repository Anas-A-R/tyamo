import 'package:flutter/material.dart';

class TwoWidgetCard extends StatelessWidget {
  final String text1;
  final String value1;
  final Color? text_clr;
  final Color? card_color;
  final Widget? sub_widget1;
  final String text2;
  final String value2;
  final Widget? sub_widget2;

  TwoWidgetCard(
      {required this.text1,
      required this.value1,
      this.text_clr,
      this.card_color,
      this.sub_widget1,
      
      required this.text2,
      required this.value2,
      this.sub_widget2,

      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Card(
        color: card_color ?? Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    value1,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: text_clr ?? Color.fromARGB(255, 111, 190, 199)),
                  ),
                  // sub_widget1?? Text(""),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                children: [
                  Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    value2,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: text_clr ?? Color.fromARGB(255, 111, 190, 199)),
                  ),
                  // sub_widget2?? Text(""),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
