import 'package:flutter/material.dart';


class GradientButtonContainer extends StatelessWidget {
  final String title;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientVertical;
  final Function() onpressed;

  GradientButtonContainer(
      {required this.title,
      required this.clr,
      required this.overlayColor,
      required this.isGradientVertical, 
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Card(
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: isGradientVertical ? Alignment.topCenter : Alignment.centerLeft,
                  end: isGradientVertical ?Alignment.bottomCenter : Alignment.centerRight,
                  colors: clr,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ElevatedButton(
              onPressed: onpressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        fontSize: 17,
                        color:Colors.white),
                  ),
                ],
              ),
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                overlayColor: MaterialStatePropertyAll(overlayColor),
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(10)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
