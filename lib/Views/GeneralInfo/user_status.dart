import 'package:flutter/material.dart';
import 'package:tyamo/Views/Reusability/one-value-card.dart';
import 'package:tyamo/Views/Reusability/two_value_card.dart';



class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    "AWAY",
    "DO NOT DISTURB",
    "DRIVING",
    "MEETING",

  ];

  List<String> status2 = [    "EATING",
    "OUTDOOR",
    "SLEEPING",
    "MORKLING",];

    String selectedStatus="eATING";

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
            gradient: LinearGradient(colors: [
          Color(0xFF86AAE8),
          Color(0xFF92E8E3),
        ])),
        child: Column(
          children: [
            Expanded(
                child: Container(
              // color: Colors.red,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "User's Status",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: TwoValueCard(
                                        text: "User Is", value: "Online"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: TwoValueCard(
                                        text: "Last App Action",
                                        value: "2 Minutes Ago"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: TwoValueCard(
                                text: "User Status", value: "Driving"),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Status  ",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Eating",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 111, 190, 199)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView.builder(
                        //  itemCount: 3,
                        itemCount:status.length,
                        scrollDirection: Axis.horizontal,
                        
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                 onTap: () {
                                  setState(() {
                                     selectedStatus=status[index];
                                  });
                                },
                                child: OneValueCard(
                                  value: status[index],
                                  card_clr:selectedStatus == status[index]? Colors.blue: Colors.cyan,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                     selectedStatus=status2[index];
                                  });
                                },
                                child: OneValueCard(
                                  value: status2[index],
                                  card_clr:selectedStatus == status2[index]? Colors.blue: Colors.cyan,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
