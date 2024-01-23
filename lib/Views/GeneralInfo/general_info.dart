import 'package:flutter/material.dart';
import 'package:tyamo/Views/Reusability/two_value_card.dart';
import 'package:tyamo/Views/Reusability/two_widget_card.dart';


class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
        color:Colors.teal.shade300,
        child: Column(
          children: [
            Expanded(
              child: Container(
                // color: Colors.green,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      // color: Colors.orange,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "General Info:",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 6,
                                        child: TwoValueCard(
                                            text: "Screen Status",
                                            value: "UNLOCKED")),
                                    Expanded(
                                        flex: 10,
                                        child: TwoWidgetCard(
                                            text1: "System Voume",
                                            value1: "0/7",
                                            text2: "Media Volume",
                                            value2: "4/7")),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.yellow,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 10,
                                      child: TwoWidgetCard(
                                          text1: "Light Activity",
                                          value1: "DimLight",
                                          text2: "Light Intensity",
                                          value2: "4"),
                                    ),
                                    Expanded(
                                        flex: 6,
                                        child: TwoValueCard(
                                            text: "Brightness",
                                            value: "30%")),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      // color: Colors.orange,
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Last Updated : 1 min ago",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Column(children: [
                  SizedBox(height: 10,),
                  Container(
                      height: 50,
                      // color: Colors.orange,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "My General Info:",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                                ),
                          ),
                        ),
                      ),
                    ),

                     Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 5,
                                        child: TwoValueCard(
                                            text: "Screen State",
                                            value: "ON",
                                            card_color: Colors.teal.shade300,
                                            text_clr: Colors.white,
                                            )),
                                    Expanded(
                                        flex: 10,
                                        child: TwoWidgetCard(
                                            text1: "System Voume",
                                            value1: "5/15",
                                            text2: "Media Volume",
                                            value2: "7/15",
                                            card_color:  Colors.teal.shade300,
                                            text_clr:Colors.white,
                                            )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.yellow,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 10,
                                      child: TwoWidgetCard(
                                          text1: "Light Activity",
                                          value1: "No Light",
                                          text2: "Light Intensity",
                                          value2: "0",
                                          card_color:  Colors.teal.shade300,
                                            text_clr:Colors.white,
                                          ),
                                    ),
                                    Expanded(
                                        flex: 5,
                                        child: TwoValueCard(
                                            text: "Brightness",
                                            value: "40 %",card_color: Colors.teal.shade300,
                                            text_clr: Colors.white,)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                ],),
                
              ),
            ),
             
          ],
        ),
      ),
    );
  }
}
