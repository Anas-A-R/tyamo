import 'package:flutter/material.dart';
import 'package:tyamo/Views/Reusability/two_value_card.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.yellow])),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      child: Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Battery Status",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                letterSpacing: 2),
                          )),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    child: TwoValueCard(
                                  text: "Status",
                                  value: "Discharge",
                                  text_clr: Colors.red,
                                )),
                                Expanded(
                                    child: TwoValueCard(
                                  text: "Charging Type",
                                  value: "-",
                                  text_clr: Colors.red,
                                )),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 10,
                                    child: TwoValueCard(
                                      text: "Charging Percentage",
                                      value: "45%",
                                      //  sub_widget: SleekCircularSlider(
                                      //   min:0,
                                      //   max:100,
                                      //   appearance:CircularSliderAppearance(
                                      //     customColors:CustomSliderColor(progressBarColor:Colors.red),
                                      //     infoProperties:InfoProperties(
                                      //       mainLableStyle:style(fontWeight:FontWeight.w500)
                                      //     ),
                                      //     size:100,
                                      //     customWidths:CustomSliderWidths(progressWidth:10),
                                      //   ),
                                      //   initialValue;50,
                                      //  ),
                                      text_clr: Colors.black,
                                    )),
                                Expanded(
                                    flex: 6,
                                    child: TwoValueCard(
                                      text: "Temperature",
                                      value: "35.000",
                                      text_clr: Colors.red,
                                    )),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: TwoValueCard(
                                    text: "Battery Health",
                                    value: "Good",
                                    text_clr: Colors.red,
                                  )),
                                  Expanded(
                                      child: TwoValueCard(
                                    text: "Battery Technology",
                                    value: "Li-Poly",
                                    text_clr: Colors.red,
                                  )),
                                ],
                              ),
                            ),
                          )),
                        ],
                      ),
                    )),
                  ],
                ),
              ))),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  // color: Colors.green,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                          // color: Colors.red,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: double.infinity,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Battery Status:",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ))),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: TwoValueCard(
                                      text: "Status",
                                      value: "Discharge",
                                      text_clr: Colors.red,
                                      card_color:
                                          Color.fromARGB(255, 255, 153, 0),
                                    )),
                                    Expanded(
                                        child: TwoValueCard(
                                      text: "Charging Type",
                                      value: "-",
                                      text_clr: Colors.red,
                                      card_color:
                                          Color.fromARGB(255, 255, 153, 0),
                                    )),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 10,
                                        child: TwoValueCard(
                                          text: "Charging Percentage",
                                          value: "45%",
                                          text_clr: Colors.black,
                                          card_color:
                                              Color.fromARGB(255, 255, 153, 0),
                                          //  sub_widget: SleekCircularSlider(
                                          //   min:0,
                                          //   max:100,
                                          //   appearance:CircularSliderAppearance(
                                          //     customColors:CustomSliderColor(progressBarColor:Colors.red),
                                          //     infoProperties:InfoProperties(
                                          //       mainLableStyle:style(fontWeight:FontWeight.w500)
                                          //     ),
                                          //     size:100,
                                          //     customWidths:CustomSliderWidths(progressWidth:10),
                                          //   ),
                                          //   initialValue;50,
                                          //  ),
                                        )),
                                    Expanded(
                                        flex: 6,
                                        child: TwoValueCard(
                                          text: "Temperature",
                                          value: "35.000",
                                          text_clr: Colors.red,
                                          card_color:
                                              Color.fromARGB(255, 255, 153, 0),
                                        )),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: TwoValueCard(
                                        text: "Battery Health",
                                        value: "Good",
                                        text_clr: Colors.red,
                                        card_color:
                                            Color.fromARGB(255, 255, 153, 0),
                                      )),
                                      Expanded(
                                          child: TwoValueCard(
                                        text: "Battery Technology",
                                        value: "Li-Poly",
                                        text_clr: Colors.red,
                                        card_color:
                                            Color.fromARGB(255, 255, 153, 0),
                                      )),
                                    ],
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
