// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("MY PROFILE",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.black)),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: CircularProfileAvatar(
              "",
              // backgroundColor: Colors.cyan,
              borderWidth: 2,
              borderColor: Colors.deepPurpleAccent,
              backgroundColor: Colors.cyan,
              elevation: 20,
              radius: 65,
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
          SizedBox(
            height: 20,
          ),
          Text("Anas Razzaq", style: TextStyle(fontSize: 17, color: Colors.black)),
          SizedBox(
            height: 10,
          ),
          Text("anasrazaq850@gmail.com",
              style: TextStyle(fontSize: 14, color: Colors.black)),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(
                  color: Color(0xff671AFC),
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Edit Profile Details",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff671AFC),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              CardDetailRow(
                  color: Colors.grey.shade300,
                  icon: Icon(Icons.alternate_email),
                  type: "Email",
                  val: "anasrazaq850@gmail.com"),
              CardDetailRow(
                  color: Colors.transparent,
                  icon: Icon(Icons.flag_outlined),
                  type: "Country",
                  val: "Pakistan"),
              CardDetailRow(
                  color: Colors.grey.shade300,
                  icon: Icon(Icons.phone),
                  type: "Phone Number",
                  val: "Not Currently Set"),
              more
                  ? CardDetailRow(
                      color: Colors.transparent,
                      icon: Icon(FontAwesomeIcons.venusMars),
                      type: "Gender",
                      val: "Male")
                  : Container(),
              more
                  ? CardDetailRow(
                      color: Colors.grey.shade300,
                      icon: Icon(Icons.person_outline),
                      type: "Partner",
                      val: "Ali Raza")
                  : Container(),
              more
                  ? CardDetailRow(
                      color: Colors.transparent,
                      icon: Icon(Icons.fingerprint),
                      type: "UID",
                      val: "ASDF234FDFB4HG4G")
                  : Container(),
              more
                  ? CardDetailRow(
                      color: Colors.grey.shade300,
                      icon: Icon(Icons.schedule),
                      type: "Account Created",
                      val: "10-12-2020")
                  : Container(),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(
                  color: Colors.grey,
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade400),
            ),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                more ? "- Show Less" : "+ Show More",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 125, 222, 69),
                    Color.fromARGB(255, 11, 149, 218)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                     Text(
                      "premium",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
                 
              ),
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 222, 69, 158),
                    Color.fromARGB(255, 218, 218, 11)
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed on",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                     Text(
                      "N/A",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  final String type;
  final String val;
  final Color color;
  final Icon icon;
  CardDetailRow(
      {required this.color,
      required this.icon,
      required this.type,
      required this.val});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: val == "Not Currently Set"
                            ? Colors.red
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
