import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
// import 'package:getwidget/components/avatar/gf_avatar.dart';

class AlbumNewPost extends StatelessWidget {
  const AlbumNewPost({super.key});

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
      body: ListView(
        children: [
          Container(),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width * 0.80,
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/wallpaper.jpg")))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: GFAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Write a caption", border: InputBorder.none),
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(
              
                style: ButtonStyle(
                  
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                    ),
                    
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("POST PICTURE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                )),
          )
        ],
      ),
    );
  }
}
