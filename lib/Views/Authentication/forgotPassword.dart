import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Interfaces/Auth/forgot_password_services.dart';
import 'package:tyamo/Views/Reusability/auth_heading.dart';
import 'package:tyamo/Views/Reusability/auth_text_field.dart';

class ForgotPassword extends StatelessWidget {
  RoundedLoadingButtonController _forgotPasswordButtonController =
      RoundedLoadingButtonController();

    ForgotPasswordServices forgotPasswordServices=ForgotPasswordServices();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tyamo", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 11, 5, 60),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              AuthHeading(
                  mainText: "Forgot your password ",
                  subText: "",
                  logo: "assets/images/T.jpg",
                  fontSize: 20.sp,
                  logoSize: 23.sp),
              Container(
                height: 20.h,
                width: 40.w,
                child: Image.asset(
                  "assets/images/ForgotPassword.jpg",
                  filterQuality: FilterQuality.high,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "To request for a new one, type your email address below. A link to reset the password will be sent to that email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AuthTextField(
                controller: ForgotPasswordServices().emailController,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                obsecureText: false,
                icon: Icons.alternate_email,
                size: 18.sp,
              ),
              SizedBox(
                height: 20,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  // height: 60,
                  borderRadius: 5,
                  color: Color.fromARGB(255, 11, 5, 60),
                  controller: _forgotPasswordButtonController,
                  onPressed: () {
                    print("The button was pressed");
                  },
                  child: Text(
                    "Send",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
