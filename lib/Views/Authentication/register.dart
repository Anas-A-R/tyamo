import 'dart:async';
import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Controller/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/register_services.dart';
import 'package:tyamo/Views/Authentication/login.dart';
import 'package:tyamo/Views/Reusability/auth_heading.dart';
import 'package:tyamo/Views/Reusability/auth_text_field.dart';


class Register extends StatelessWidget {
  RoundedLoadingButtonController _registerButtonController =
      RoundedLoadingButtonController();

  final RegisterServices registerServices = RegisterServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tyamo", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 11, 5, 60),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              new AuthHeading(
                mainText: "Sign up to tyamo ",
                subText: "Get connected with \nyour partners",
                logo: "assets/images/T.jpg",
                logoSize: 22.sp,
                fontSize: 20.sp,
              ),
              SizedBox(
                height: 35,
              ),
              AuthTextField(
                controller: registerServices.emailController,
                labelText: "Email",
                obsecureText: false,
                icon: Icons.alternate_email,
                size: 17.sp,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              AuthTextField(
                controller: registerServices.passwordController,
                labelText: "Password",
                obsecureText: true,
                icon: Icons.password,
                size: 17.sp,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 20,
              ),
              AuthTextField(
                controller: registerServices.confirmPasswordController,
                labelText: "Confirm Password",
                obsecureText: true,
                icon: Icons.lock_reset,
                size: 17.sp,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 25,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 5,
                  color: Color.fromARGB(255, 11, 5, 60),
                  controller: _registerButtonController,
                  onPressed: () {
                    Timer(Duration(seconds: 2), () {
                      _registerButtonController.success();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade, child: Login()));
                    });
                    // UserController().UserRegister("anasrazaq850@gmail.com","fingerprint");

                    // print("Entered Email: " + registerServices.emailController.text);
                    //  print("Entered Password: " + registerServices.passwordController.text);
                    //   print("Entered Confirm Password: " + registerServices.confirmPasswordController.text);
                    if (registerServices.passwordController.text ==
                        registerServices.confirmPasswordController.text) {
                      UserController().UserRegister(
                          registerServices.emailController.text,
                          registerServices.passwordController.text);
                    } else {
                      AchievementView(
                        title: "Error!",
                        subTitle: "Passwords do not match",
                        color: Colors.red,
                      ).show(context);
                    }
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 19.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "By register, you agree to our terms and conditions.",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Color.fromARGB(255, 111, 105, 105),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered? ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade, child: Login()));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
