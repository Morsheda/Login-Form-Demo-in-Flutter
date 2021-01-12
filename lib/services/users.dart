import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_form/screens/homepage.dart';

class UserManagement {
  storeNewUser(user, context) async {
    var firebaseUser = await FirebaseAuth.instance.currentUser();
    Firestore.instance
        .collection('users')
        .document(firebaseUser.uid)
        .setData({'email': user.email, 'uid': user.uid})
        .then((value) => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())))
        .catchError((e) {
          print(e);
        });
  }
}
