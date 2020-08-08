import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_form/screens/homepage.dart';

class UserManagement {
  storeNewUser(user, context) {
    Firestore.instance
        .collection('users')
        .add({'email': user.email, 'uid': user.uid})
        .then((value) => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())))
        .catchError((e) {
          print(e);
        });
  }
}
