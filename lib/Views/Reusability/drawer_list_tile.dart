import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final IconData iconName;
  final String tileTitle;
  final Color icon_color;

  DrawerListTile({required this.iconName, required this.tileTitle,required this.icon_color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Container(
          height: 50,
          alignment: Alignment.center,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  iconName,
                  color:icon_color,
                  size: 22,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  tileTitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
