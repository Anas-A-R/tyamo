import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyamo/Model/my_user.dart';

class UserDatabase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<bool> createUserInDb(MyUser user) async {
    try {
      firestore.collection("users").doc(user!.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "account created": Timestamp.now(),
        "userName": user.userName,
        "displayName": user.displayName,
        "avatarUrl": user.avatarUrl,
        "chatRoomId": user.chatRoomId,
        "friendUid": user.friendUid,
        "gender": user.gender,
        "phone": user.phone,
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myuser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("users")
        .doc("uG3BPw4QqvRa3JFmtL6If5rycnm2")
        .get();
    myuser.uid = documentSnapshot.data()!["uid"];
    myuser.email = documentSnapshot.data()!["email"];
    myuser.avatarUrl = documentSnapshot.data()!["avatarUrl"];
    myuser.userName = documentSnapshot.data()!["userName"];
    myuser.displayName = documentSnapshot.data()!["displayName"];
    myuser.friendUid = documentSnapshot.data()!["friendUid"];
    myuser.chatRoomId = documentSnapshot.data()!["chatRoomId"];
    myuser.gender = documentSnapshot.data()!["gender"];
    myuser.phone = documentSnapshot.data()!["phone"];

    return myuser;
  }
}
