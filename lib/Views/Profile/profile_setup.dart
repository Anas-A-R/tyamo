import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as Im;
import 'package:tyamo/Controller/user_controller.dart';
import 'package:tyamo/Model/my_user.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Views/Reusability/auth_text_field.dart';
import 'package:uuid/uuid.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

// bool isMale=false;
class _ProfileSetupState extends State<ProfileSetup> {
  RoundedLoadingButtonController _profileSetupButtonController =
      RoundedLoadingButtonController();

  bool isMale = true;
  bool isUploading = false;
  File? file;
  String postId = Uuid().v4();
  ImagePicker img = ImagePicker();

  handleChooseFromGallery() async {
    var getImage = await img.pickImage(
        source: ImageSource.gallery, maxHeight: 1080, maxWidth: 1920);
    File io = File(getImage!.path);
    setState(() {
      file = io;
    });
    if (file != null) {
      uploadToStorage();
    }
  }

  updateAvatarInFirestore({String? mediaUrl, String? uid}) async {
    await FirebaseFirestore.instance.collection("users").doc(uid).update({
      "avatarUrl": mediaUrl,
    });
  }

  uploadToStorage() async {
    setState(() {
      isUploading = true;
    });
    await compressImage();
    String? mediaUrl = await uploadImage();

    if (mediaUrl != null) {
      await updateAvatarInFirestore(mediaUrl: mediaUrl, uid: myUser!.uid);
    }
  }

  Future<String?> uploadImage() async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("ProfilePictures/$postId.jpg")
        .putFile(file!);
    String? downloadUrl;
   return uploadTask.then((p0)=>p0.ref.getDownloadURL());
    
  }

  compressImage() async {
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    Im.Image? imageFile = Im.decodeImage(file!.readAsBytesSync());
    final compressedImageFile = File("$path/image_$postId.jpg")
      ..writeAsBytesSync(Im.encodeJpg(imageFile!, quality: 90));
    setState(() {
      file = compressedImageFile;
    });
  }

  UserController? _currentuser;
  MyUser? myUser;
  @override
  Widget build(BuildContext context) {
    _currentuser = Provider.of<UserController>(context, listen: false);
    setState(() {
      myUser = _currentuser!.getCurrentUser;
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 25,
              width: 30,
              child: Image.asset(
                "assets/images/T.jpg",
                filterQuality: FilterQuality.high,
              ),
            ),
            const Text(
              "yamo",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/sea.jpg",
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 5, 60),
              ),
              child: Text(
                "Profile Setup",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: 20),
            CircularProfileAvatar(
              "",
              onTap: () {
                handleChooseFromGallery();
              },
              backgroundColor: Colors.black,
              initialsText: Text(
                "+",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.text,
                  labelText: "Your name",
                  obsecureText: false,
                  icon: Icons.face,
                  size: 15),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Your username",
                  obsecureText: false,
                  icon: Icons.alternate_email,
                  size: 15),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !isMale
                          ? Colors.grey
                          : Color.fromARGB(255, 11, 5, 60),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 5),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Icon(Icons.male, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !isMale
                          ? Color.fromARGB(255, 11, 5, 60)
                          : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 5),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.female,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  // height: 60,
                  borderRadius: 5,
                  color: Color.fromARGB(255, 11, 5, 60),
                  controller: _profileSetupButtonController,
                  onPressed: () {
                    Timer(Duration(seconds: 2), () {
                      _profileSetupButtonController.success();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: InviteFriend()));
                    });
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
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
