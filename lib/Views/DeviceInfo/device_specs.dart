import 'package:flutter/material.dart';
import 'package:tyamo/Views/Reusability/two_value_card.dart';


class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({super.key});

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
      body: Container(
        color: Colors.teal.shade500,
        child: Column(
          children: [
            Container(
              height: 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Device Information:",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              // color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          // color: Colors.green,
                          child: Padding(
                             padding: const EdgeInsets.only(top: 15,bottom: 15,left: 20),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                    child: TwoValueCard(
                                  text: "Total RAM",
                                  value: "6.00 GB",
                                  text_clr: Colors.red,
                                )),
                                Expanded(
                                  flex: 5,
                                    child: TwoValueCard(
                                  text: "Refresh State",
                                  value: "60 Hz",
                                  text_clr: Colors.red,
                                )),
                                Expanded(
                                  flex: 8,
                                    child: TwoValueCard(
                                  text: "Fingerprint Sensor",
                                  value: "Present",
                                  text_clr: Colors.red,
                                )),
                                Expanded(
                                  flex: 8,
                                    child: TwoValueCard(
                                  text: "Fingerprint Sensor",
                                  value: "Yes",
                                  text_clr: Colors.red,
                                )),
                              ],
                            ),
                          ))),
                  Expanded(
                      child: Container(
                          // color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 15,right: 20),
                            child: Column(
                              children:  [ 
                                Expanded(
                                    flex: 8,
                                      child: TwoValueCard(
                                    text: "Internal Memory",
                                    value: "70.35 / 110.00 GB",
                                    text_clr: Colors.red,
                                  )),
                                  Expanded(
                                    flex: 8,
                                      child: TwoValueCard(
                                    text: "External Memory",
                                    value: "N/A",
                                    text_clr: Colors.red,
                                  )),
                                  Expanded(
                                    flex: 5,
                                      child: TwoValueCard(
                                    text: "Screen Size",
                                    value: "6.06 inches",
                                    text_clr: Colors.red,
                                  )),
                                  Expanded(
                                    flex: 5,
                                      child: TwoValueCard(
                                    text: "Resolution",
                                    value: "2134 x 1080",
                                    text_clr: Colors.red,
                                  )),
                              ],
                            ),
                          )))
                ],
              ),
            )),
            // Container(
            //   height: 50,
            //       color: Colors.purple,
            //       child: Column(children: [],))
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
