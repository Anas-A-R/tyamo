import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? userName;
  String? displayName;
  String? avatarUrl;
  String? friendUid;
  String? chatRoomId;
  String? gender;
  String? phone;
  bool? isLoadingStartUpData;
  Timestamp? accountCreated;

  MyUser(
      {this.uid,
      this.email,
      this.password,
      this.userName,
      this.displayName,
      this.avatarUrl,
      this.friendUid,
      this.chatRoomId,
      this.gender,
      this.phone,
      this.isLoadingStartUpData,
      this.accountCreated});
}
