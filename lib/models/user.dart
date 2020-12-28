import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String name;
  String email;

  UserModel({this.id, this.name, this.email});

  factory UserModel.fromDocumentSnapshot({DocumentSnapshot documentSnapshot}) {
    return UserModel(
      id: documentSnapshot.documentID,
      name: documentSnapshot["name"],
      email: documentSnapshot["email"],
    );
  }
}
