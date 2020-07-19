import 'package:firebase_auth/firebase_auth.dart';
import 'package:phone/phone_auth.dart';
import 'package:phone/app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  HomePage({Key key, @required this.user})
      : assert(user != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Sign out"),
            onPressed: () {
              _firebaseAuth.signOut();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>PhoneLogin()));
            },
          ),
          Center(
            child: Text(user.phoneNumber),
          ),
        ],
      ),
    );
  }
}
