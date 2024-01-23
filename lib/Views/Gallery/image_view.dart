import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class ImageView extends StatelessWidget {
  final String url;
  ImageView({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        heroAttributes: PhotoViewHeroAttributes(tag: "assets/images/wallpaper.jpg"),
        imageProvider: AssetImage("assets/images/wallpaper.jpg")),
    );
  }
}