import 'package:flutter/material.dart';
import 'package:tyamo/Views/Reusability/one-value-card.dart';


class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

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
        // color: Colors.red,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFB893D6),
          Color(0xFF8CA5DB),
        ])),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            // color: Colors.orange,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Location Status:",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            // color: Colors.red,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    // color: Colors.amber,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: Colors.red,
                              size: 40,
                            ),
                            SizedBox(width: 10,),
                            Flexible(child: Container(child: Text("Muhammad Ali Park Street No 1 Shahdra Lahore",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.purple),),))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 140,
                  child:OneValueCard(value: "pakistan", card_clr: Colors.white,text_clr: Colors.purple,),
                ),
                SizedBox(height: 10,),
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
          )),
          Expanded(
              child: Container(
            
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
            child:  Column(
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
                  "My Location Status:",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                     ),
                ),
              ),
            ),
          ),
                // SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    
                    height: 90,
                    width: double.infinity,
                    // color: Colors.amber,
                    child: Card(
                      color:  Color.fromARGB(255, 118, 83, 147),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        
                        child: Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(width: 10,),
                            Flexible(child: Container(child: Text("Muhammad Ali Park Street No 1 Shahdra Lahore",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 140,
                  child:OneValueCard(value: "pakistan", card_clr: Color.fromARGB(255, 118, 83, 147),text_clr: Colors.white,),
                ),
                SizedBox(height: 10,),
                
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
