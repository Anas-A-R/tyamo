import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:tyamo/Views/Reusability/pr_setting_heading.dart';
import 'package:tyamo/Views/Reusability/pr_setting_sub.dart';


class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xff671AFC),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Settings",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Row(
                                  children: [
                                    CircularProfileAvatar(
                                      "",
                                      // backgroundColor: Colors.cyan,
                                      borderWidth: 2,
                                      borderColor: Colors.deepPurpleAccent,
                                      backgroundColor: Colors.cyan,
                                      elevation: 20,
                                      radius: 30,
                                      cacheImage: true,
                                      errorWidget: (context, url, error) {
                                        return Icon(
                                          Icons.face,
                                          size: 50,
                                        );
                                      },
                                      animateFromOldImageOnUrlChange: true,
                                      placeHolder: (context, url) {
                                        return Container(
                                          child: Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Anas Razzaq",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              height: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            PrSettingHeading(headingText: "Profile Setting"),
                            PrSettingSub(title: "Edit Name"),
                            PrSettingSub(title: "Edit Phone No"),
                            PrSettingSub(title: "Change Password"),
                            PrSettingSub(
                              title: "Email Status",
                              SecondaryWidget: Row(
                                children: [
                                  Text("Not Verified",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            PrSettingHeading(
                                headingText: "Notification Setting"),
                            SizedBox(
                              height: 15,
                            ),
                            PrSettingSub(
                              title: "Push Notifications",
                              SecondaryWidget: GFToggle(
                                onChanged: (value) {},
                                value: true,
                                type: GFToggleType.android,
                                enabledTrackColor: Colors.greenAccent,
                                
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            PrSettingHeading(
                                headingText: "Application Setting"),
                            SizedBox(
                              height: 15,
                            ),
                            PrSettingSub(
                              title: "Background Updates",
                              SecondaryWidget: Row(
                                children: [
                                  Text("Not Allowed",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                              height: 40,
                            ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
