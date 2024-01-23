import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Controller/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/login_services.dart';
import 'package:tyamo/Views/Authentication/forgotPassword.dart';
import 'package:tyamo/Views/Authentication/register.dart';
import 'package:tyamo/Views/Reusability/auth_heading.dart';
import 'package:tyamo/Views/Reusability/auth_text_field.dart';


class Login extends StatelessWidget {
  RoundedLoadingButtonController _loginButtonController =
      RoundedLoadingButtonController();


  LoginServices loginServices = LoginServices();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tyamo", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 10, 9, 11),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              new AuthHeading(
                mainText: "Sign in to tyamo ",
                subText: "To connect with \nyour partners",
                logo: "assets/images/T.jpg",
                logoSize: 22.sp,
                fontSize: 20.sp,
              ),
              SizedBox(
                height: 25,
              ),
              AuthTextField(
                controller: loginServices.emailController,
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
                controller: loginServices.passwordController,
                labelText: "Password",
                obsecureText: true,
                icon: Icons.password,
                size: 17.sp,
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 20,
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
                  controller: _loginButtonController,
                  onPressed: () {

                    UserController().loginUser(loginServices.emailController.text,loginServices.passwordController.text);
                    // Timer(Duration(seconds: 2), () {
                    //   _loginButtonController.success();
                    //   Navigator.push(
                    //       context,
                    //       PageTransition(
                    //           type: PageTransitionType.fade,
                    //           child: ProfileSetup()));
                    // });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 19.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: ForgotPassword()));
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 233, 6, 6),
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
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
                                type: PageTransitionType.fade,
                                child: Register()));
                      },
                      child: Text(
                        "Sign Up",
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
