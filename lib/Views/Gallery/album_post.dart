import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'dart:ui' as prefix0;
import 'package:getwidget/getwidget.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Gallery/image_view.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/wallpaper.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: BackdropFilter(
                      filter: prefix0.ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                      child: Container(
                        color: Colors.black.withOpacity(0.4),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.orange,
                                      ),
                                    )),
                                Container(
                                    height: 30,
                                    width: 90,
                                    child: const Text(
                                      "Tyamo",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800,
                                          color:
                                              Color.fromARGB(255, 255, 234, 0),
                                          letterSpacing: 1),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: GFAvatar(
                                    backgroundColor: Colors.blue,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: GestureDetector(
                                onTap: () {
                                   Navigator.push(context, PageTransition(child: ImageView(url: "assets/images/wallpaper.jpg",), type: PageTransitionType.fade));
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Hero(
                                      tag: "assets/images/T.jpg",
                                      child: Image.asset(
                                        "assets/images/wallpaper.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                height: 50,
                                width: 300,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    BalloonSlider(
                                      value: 0,
                                      onChanged: (value) {},
                                      showRope: false,
                                      onChangeEnd: (value) {},
                                      onChangeStart: (value) {},
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Caption:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.cyan)),
                          GestureDetector(
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
                                          labelText: "Enter new caption",
                                          labelStyle: const TextStyle(
                                            color: Colors.black,
                                          ),
                                          fillColor: Colors.black,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                            borderSide: const BorderSide(
                                                color: Colors.green),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                            borderSide: const BorderSide(
                                                color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                            borderSide: const BorderSide(
                                                color: Colors.purple),
                                          )),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: null,
                                    ),
                                  ),
                                ),
                                dismissOnBackKeyPress: true,
                                isDense: false,
                                btnOkText: "Confirm Caption",
                                btnOkOnPress: () {},
                              ).show();
                            },
                            child: const Icon(
                              Icons.edit,
                              color: Colors.cyan,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FocusedMenuHolder(
                        menuWidth: MediaQuery.of(context).size.width * 0.50,
                        blurSize: 2.0,
                        menuItemExtent: 45,
                        menuBoxDecoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        duration: const Duration(milliseconds: 100),
                        animateMenuItems: true,
                        blurBackgroundColor: Colors.black54,
                        menuOffset: 10,
                        bottomOffsetHeight: 80,
                        menuItems: [
                          FocusedMenuItem(
                              backgroundColor: Colors.red,
                              trailingIcon:
                                  const Icon(Icons.copy, color: Colors.white),
                              title: const Text(
                                "Copy",
                                style: TextStyle(color: Colors.white),
                                textScaleFactor: 1,
                              ),
                              onPressed: () {}),
                          FocusedMenuItem(
                              backgroundColor: Colors.red,
                              trailingIcon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              title: const Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                                textScaleFactor: 1,
                              ),
                              onPressed: () {
                                AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Enter new caption",
                                            labelStyle: const TextStyle(
                                              color: Colors.black,
                                            ),
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: const BorderSide(
                                                  color: Colors.green),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: const BorderSide(
                                                  color: Colors.purple),
                                            )),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 1,
                                        maxLines: null,
                                      ),
                                    ),
                                  ),
                                  dismissOnBackKeyPress: true,
                                  isDense: false,
                                  btnOkText: "Confirm Caption",
                                  btnOkOnPress: () {},
                                ).show();
                              })
                        ],
                        child: const ExpandableText(
                          "What a beautiful picture, I am a great lover of nature so I like it too much. This is amazing picture",
                          collapseText: "Show less",
                          expandText: "Show more",
                          maxLines: 1,
                          linkColor: Colors.orange,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Comments",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.purple),
                          )),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return FocusedMenuHolder(
                            menuWidth: MediaQuery.of(context).size.width * 0.50,
                            blurSize: 2.0,
                            menuItemExtent: 45,
                            menuBoxDecoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            duration: const Duration(milliseconds: 100),
                            animateMenuItems: true,
                            blurBackgroundColor: Colors.black54,
                            menuOffset: 10,
                            bottomOffsetHeight: 80,
                            menuItems: [
                              FocusedMenuItem(
                                  backgroundColor: Colors.red,
                                  trailingIcon: const Icon(Icons.copy,
                                      color: Colors.white),
                                  title: const Text(
                                    "Copy",
                                    style: TextStyle(color: Colors.white),
                                    textScaleFactor: 1,
                                  ),
                                  onPressed: () {}),
                              FocusedMenuItem(
                                  backgroundColor: Colors.red,
                                  trailingIcon: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    "Edit",
                                    style: TextStyle(color: Colors.white),
                                    textScaleFactor: 1,
                                  ),
                                  onPressed: () {
                                    AwesomeDialog(
                                      context: context,
                                      animType: AnimType.scale,
                                      dialogType: DialogType.noHeader,
                                      body: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                labelText: "Enter new caption",
                                                labelStyle: const TextStyle(
                                                  color: Colors.black,
                                                ),
                                                fillColor: Colors.black,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  borderSide: const BorderSide(
                                                      color: Colors.green),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  borderSide: const BorderSide(
                                                      color: Colors.purple),
                                                )),
                                            keyboardType:
                                                TextInputType.multiline,
                                            minLines: 1,
                                            maxLines: null,
                                          ),
                                        ),
                                      ),
                                      dismissOnBackKeyPress: true,
                                      isDense: false,
                                      btnOkText: "Confirm Caption",
                                      btnOkOnPress: () {},
                                    ).show();
                                  })
                            ],
                            onPressed: () {},
                            child: ListTileMoreCustomizable(
                              title: Text(
                                "Anas Razzaq",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.cyan),
                              ),
                              leading: GFAvatar(
                                  backgroundColor: Colors.cyan, size: 28),
                              horizontalTitleGap: 0.0,
                              minLeadingWidth: 60,
                              minVerticalPadding: 20,
                              contentPadding: EdgeInsets.all(0),
                              isThreeLine: false,
                              subtitle: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("This is my comment "),
                              ),
                              trailing: Text("1 min ago"),
                              onTap: null,
                              onLongPress: null,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: null,
                      focusNode: null,
                      keyboardType: TextInputType.multiline,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 3,
                      minLines: 1,
                      style: TextStyle(color: Colors.white),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Start a conversation",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(20),
                        filled: true,
                        fillColor: Colors.orange,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                      child:
                          Icon(Icons.arrow_forward_ios, color: Colors.black)),
                ],
              ),
            ),
          ),
        ]
        ),
      ),
    );
  }
}
