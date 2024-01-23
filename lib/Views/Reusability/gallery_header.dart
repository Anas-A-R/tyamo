// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class GalleryHeader extends StatelessWidget {
  final BuildContext context;
  final String totalUploadValue;
  final String timeOpenedValue;
  final bool isEditable;
  final String name;
  final String description;

  GalleryHeader(
      {required this.context,
      required this.totalUploadValue,
      required this.timeOpenedValue,
      required this.isEditable,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 243, 90),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              boxShadow: [
                const BoxShadow(
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6,
                  color: Colors.grey,
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 241, 141, 10),
                      Colors.yellow
                    ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    boxShadow: [
                      const BoxShadow(
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6,
                        color: Colors.grey,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    CircularProfileAvatar(
                      "",
                      backgroundColor: Colors.cyan,
                      borderColor: Colors.deepPurple,
                      radius: 50,
                      borderWidth: 3,
                      elevation: 10,
                      // initialsText:Text("+",
                      // style: TextStyle(
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 30,),),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total Uploads",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          totalUploadValue,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  isEditable
                      ? GestureDetector(
                          onTap: () {
                            AwesomeDialog(
                              context: context,
                              animType: AnimType.scale,
                              dialogType: DialogType.noHeader,
                              body: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: "Enter Album Description",
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        fillColor: Colors.black,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          borderSide:
                                              BorderSide(color: Colors.green),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          borderSide:
                                              BorderSide(color: Colors.purple),
                                        )),
                                    keyboardType: TextInputType.multiline,
                                    minLines: 2,
                                    maxLines: null,
                                  ),
                                ),
                              ),
                              btnOkOnPress: () {},
                            ).show();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container(),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Times Opened",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          timeOpenedValue,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        )
      ],
    );
  }
}
