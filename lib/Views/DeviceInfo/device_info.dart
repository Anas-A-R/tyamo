import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/DeviceInfo/battery_info.dart';
import 'package:tyamo/Views/DeviceInfo/device_specs.dart';
import 'package:tyamo/Views/GeneralInfo/general_info.dart';
import 'package:tyamo/Views/GeneralInfo/location_info.dart';
import 'package:tyamo/Views/Reusability/gradient_button_container.dart';
import 'package:tyamo/Views/Reusability/top_banner.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Tyamo",
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 22,
              letterSpacing: 1,
              color: Color.fromARGB(255, 32, 28, 76)),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          TopBanner(title: "Device Info", clr: [Colors.green, Colors.green]),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: GradientButtonContainer(
                                title: "Device Info",
                                clr: [
                                  Color(0xFF86AAE8),
                                  Color(0xFF92E8E3),
                                ],
                                overlayColor: Colors.cyan,
                                isGradientVertical: true,
                                onpressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: DeviceSpecs(),
                                          type: PageTransitionType.fade));
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              flex: 6,
                              child: GradientButtonContainer(
                                title: "Battery",
                                clr: [
                                  Color(0xFFFAD585),
                                  Color(0xFFF47A7D),
                                ],
                                overlayColor: Colors.orangeAccent,
                                isGradientVertical: false,
                                onpressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: BatteryInfo(),
                                          type: PageTransitionType.fade));
                                },
                              ),
                            ),
                          ],
                        ))),
                Expanded(
                    child: GradientButtonContainer(
                  title: "General",
                  clr: [
                    Color(0xFF50C9C2),
                    Color(0xFF95DEDA),
                  ],
                  overlayColor: Colors.teal.shade300,
                  isGradientVertical: false,
                  onpressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: GeneralInfo(),
                            type: PageTransitionType.fade));
                  },
                )),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: GradientButtonContainer(
                  title: "Devise Specs",
                  clr: [
                    Color.fromARGB(255, 207, 55, 32),
                    Color.fromARGB(255, 224, 94, 94),
                  ],
                  overlayColor: Colors.red,
                  isGradientVertical: false,
                  onpressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: DeviceSpecs(),
                            type: PageTransitionType.fade));
                  },
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: GradientButtonContainer(
                        title: "Location",
                        clr: [
                          Color.fromARGB(255, 32, 101, 220),
                          Color.fromARGB(255, 183, 196, 229),
                        ],
                        overlayColor: Colors.cyan,
                        isGradientVertical: true,
                        onpressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LocationInfo(),
                                  type: PageTransitionType.fade));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 10,
                      child: GradientButtonContainer(
                        title: "Orientation",
                        clr: [
                          Color.fromARGB(255, 234, 175, 50),
                          Color.fromARGB(255, 238, 79, 82),
                        ],
                        overlayColor: Colors.orangeAccent,
                        isGradientVertical: false,
                        onpressed: () {},
                      ),
                    ),
                  ],
                )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
