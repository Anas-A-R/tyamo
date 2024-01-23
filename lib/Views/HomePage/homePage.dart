import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Authentication/login.dart';
import 'package:tyamo/Views/HomePage/dashboard.dart';
import 'package:tyamo/Views/HomePage/profile.dart';
import 'package:tyamo/Views/Profile/profile_settings.dart';
import 'package:tyamo/Views/Reusability/drawer_list_tile.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> iconList = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    Icons.settings,
  ];

  int page = 1;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Profile(),
        Dashboard(),
        ProfileSettings(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Tyamo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 11, 5, 60),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _homepageKey.currentState!.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
              width: 50,
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                "assets/images/MessageLogo.jpg",
                filterQuality: FilterQuality.high,
              ))
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                        child: CircularProfileAvatar(
                          "",
                          backgroundColor: Colors.cyan,
                          borderWidth: 2,
                          borderColor: Colors.deepPurpleAccent,
                          elevation: 10,
                          radius: 30,
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return Icon(
                              Icons.face,
                              size: 50,
                            );
                          },
                          onTap: () {
                            pageController.animateToPage(0,
                                duration: Duration(milliseconds: 200),
                                curve: Curves.linear);
                            Navigator.of(context).pop();
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anas Razzaq",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "anasrazaq850@gmail.com",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  color: Colors.cyan),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Premium",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                DrawerListTile(
                  iconName: FontAwesomeIcons.solidCreditCard,
                  tileTitle: "Subscription",
                  icon_color: Color.fromRGBO(63, 222, 219, 0.957),
                ),
                DrawerListTile(
                  iconName: Icons.settings,
                  tileTitle: "Settings",
                  icon_color: Color.fromRGBO(63, 222, 219, 0.957),
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.circleQuestion,
                  tileTitle: "Help",
                  icon_color: Color.fromRGBO(63, 222, 219, 0.957),
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.message,
                  tileTitle: "Feedback",
                  icon_color: Color.fromRGBO(63, 222, 219, 0.957),
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.share,
                  tileTitle: "Tell Others",
                  icon_color: Color.fromRGBO(63, 222, 219, 0.957),
                ),
                DrawerListTile(
                  iconName: FontAwesomeIcons.starHalfStroke,
                  tileTitle: "Rate the App",
                  icon_color: Color.fromRGBO(63, 222, 219, 0.957),
                ),
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),

                  // DrawerListTile(
                  //     iconName: FontAwesomeIcons.rightToBracket,
                  //     tileTitle: "Sign Out",
                  //     icon_color: Colors.deepPurple),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Login()),
                      );
                    },
                    child: ListTile(
                      title: Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                FontAwesomeIcons.rightToBracket,
                                color: Colors.purple,
                                size: 22,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Sign Out",
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
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 30,
        rightCornerRadius: 30,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(p0,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}
