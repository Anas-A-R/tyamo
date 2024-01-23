import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyamo/Controller/user_controller.dart';
import 'package:tyamo/Views/Root/root.dart';
import 'package:tyamo/Views/SplashScreen/splash_loader_animation.dart';


class Splash extends StatelessWidget {
  UserController userController = UserController();

  @override
  Widget build(BuildContext context) {

    userController=Provider.of<UserController>(context,listen: false);

    if (userController.currentUser.uid == null) {
      return FutureBuilder(
        future: userController.checkUserSignInInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Root();
          } else {
            return SplashAnimator();
          }
        },
      );
    } else {
      return Root();
    }
  }
}
