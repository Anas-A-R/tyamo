import 'package:flutter/material.dart';

class dashboardGradientFeature extends StatelessWidget {
  final String btnText;
  final IconData icon;
  final Color icon_color;
  final List<Color> clr;
  final FontWeight? weight;
  dashboardGradientFeature({
    required this.btnText,
    required this.icon,
    required this.clr,
    this.weight,
    required this.icon_color,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 40,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 3, offset: Offset(0.0, 3.0)),
          ],
          gradient: LinearGradient(colors: clr),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: icon_color,size: 25,),
            Flexible(
                child: Text(
              btnText,
              style: TextStyle(fontSize: 13,fontWeight: weight ?? FontWeight.w500),
            ))
          ],
        ),
      ),
    );
  }
}
// "assets/images/T.jpg"
// "Device Info"
