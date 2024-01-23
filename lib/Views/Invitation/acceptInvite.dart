import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/HomePage/homePage.dart';


class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 22,
                child: Image.asset(
                  "assets/images/T.jpg",
                  filterQuality: FilterQuality.high,
                ),
              ),
              Text(
                "yamo",
                style: TextStyle(
                  color: Color.fromARGB(255, 11, 5, 60),
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
              child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30.sp,
              width: double.infinity,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text(
                "See recieved invitations",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 19.sp,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,PageTransition(type:PageTransitionType. fade,child:HomePage()) );
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 5, 15),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: CircularProfileAvatar(
                                  "",
                                  backgroundColor: Colors.blue,
                                  radius: 30,
                                  initialsText: Text(
                                    "A",
                                    style: TextStyle(
                                      
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "@Anas850",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Text(
                                    "Anas",
                                    style:
                                        TextStyle(fontSize: 13, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  GFButton(
                                    color: Colors.cyan,
                                    shape: GFButtonShape.pills,
                                    child: Text("Accept"),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  GFButton(
                                    color: Colors.red,
                                    shape: GFButtonShape.pills,
                                    child: Text("Decline"),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.center,
              height: 60.sp,
              width: 80.sp,
              child: Image.asset("assets/images/SRinvitation.jpg"),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your recieved invitations are currently ",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan,fontSize: 15.sp),
                ),
                Text(
                  "NOT EMPTY",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple,fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}
