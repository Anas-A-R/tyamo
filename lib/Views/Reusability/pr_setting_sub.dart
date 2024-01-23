import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrSettingSub extends StatelessWidget {
  final String title;
  final Widget? SecondaryWidget;
  PrSettingSub({required this.title, this.SecondaryWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(title,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
            SecondaryWidget?? Icon(FontAwesomeIcons.arrowRight,size: 16,),
          ],
        ),
      ),
    );
  }
}
