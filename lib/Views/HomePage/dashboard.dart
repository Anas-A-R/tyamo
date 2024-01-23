import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/DeviceInfo/device_info.dart';
import 'package:tyamo/Views/Gallery/album_main.dart';
import 'package:tyamo/Views/GeneralInfo/user_status.dart';
import 'package:tyamo/Views/Reusability/dashboard_gradient_feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "DASHBOARD",
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Friend",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 148, 22, 173)),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape:
                    BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                            child: CircularProfileAvatar(
                              "",
                              // backgroundColor: Colors.cyan,
                              borderWidth: 2,
                              borderColor: Colors.deepPurpleAccent,
                              backgroundColor: Colors.cyan,
                              elevation: 10,
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
                          ),
                          Flexible(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Anas Razzaq",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Muhammad ali park,street no 1 shahdra lahore",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 14),
                                ),
                                Text(
                                  "Online",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(
                            height: 30,
                            width: 2,
                            child: Container(
                              color: Colors.deepPurple,
                            ),
                          ),
                          Flexible(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  "User Status",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 14),
                                ),
                                Text(
                                  "N/A",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(
                            height: 30,
                            width: 2,
                            child: Container(
                              color: Colors.deepPurple,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Mood N/A",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
                        SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                       onTap: () {
                      Navigator.push(context, PageTransition(child: DeviceInfo(), type:PageTransitionType.fade));
                    },
                      child: dashboardGradientFeature(
                          btnText: "Device Info",
                          icon_color: Colors.white,
                          icon:FontAwesomeIcons.mobileScreen,
                          clr: [
                            Color(0xff4FC174),
                            Color.fromARGB(255, 99, 197, 210)
                          ]),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(child: AlbumMain(), type:PageTransitionType.fade));
                      },
                      child: dashboardGradientFeature(
                          btnText: "Gallery",
                           icon_color: Colors.white,
                         icon:FontAwesomeIcons.image,
                          clr: [
                            Color.fromARGB(255, 212, 163, 37),
                            Color.fromARGB(255, 208, 244, 5)
                          ]),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                       onTap: () {
                        Navigator.push(context, PageTransition(child: UserStatus(), type:PageTransitionType.fade));
                      },
                      child: dashboardGradientFeature(
                          btnText: "Mood",
                           icon_color: Colors.white,
                        icon:FontAwesomeIcons.faceSmile,
                          clr: [
                            Color.fromARGB(255, 159, 67, 220),
                            Color.fromARGB(255, 215, 140, 229)
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 148, 22, 173)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: dashboardGradientFeature(
                        btnText: "Playlist",
                         icon_color: Colors.pink,
                        weight: FontWeight.w900,
                        icon:FontAwesomeIcons.forwardFast,
                        clr: [
                          Colors.white,
                          Colors.white,
                        ]),
                  ),
                  Flexible(
                    child: dashboardGradientFeature(
                        btnText: "Location",
                        icon_color: Colors.blue,
                        weight: FontWeight.w900,
                       icon:FontAwesomeIcons.locationDot,
                        clr: [
                          Colors.white,
                          Colors.white,
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: dashboardGradientFeature(
                        btnText: "To-do List",
                        icon_color: Color.fromARGB(255, 196, 176, 27),
                        weight: FontWeight.w900,
                     icon:FontAwesomeIcons.rectangleList,
                        clr: [
                          Colors.white,
                          Colors.white,
                        ]),
                  ),
                  Flexible(
                    child: dashboardGradientFeature(
                        btnText: "Diary",
                        icon_color: Colors.pink,
                        weight: FontWeight.w900,
                        icon:FontAwesomeIcons.book,
                        clr: [
                          Colors.white,
                          Colors.white,
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: dashboardGradientFeature(
                        btnText: "Surprise Notes",
                        icon_color: Colors.green,
                        weight: FontWeight.w900,
                        icon: FontAwesomeIcons.noteSticky,
                        clr: [
                          Colors.white,
                          Colors.white,
                        ]),
                  ),
                  Flexible(
                    child:
                    dashboardGradientFeature(
                        btnText: "Horoscopes",
                        icon_color: Colors.purple,
                        weight: FontWeight.w900,
                        icon:FontAwesomeIcons.moon ,
                        
                        clr: [
                         Colors.white,
                          Colors.white,
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
        
    );
    
  }
}
