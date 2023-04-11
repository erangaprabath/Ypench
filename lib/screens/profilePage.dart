import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  final currentUser = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser!;

  Future signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign as " + user.email!),
            MaterialButton(
                child: Text('signout'), color: Colors.red, onPressed: signout),
          ],
        ),
      ),
    );
  }
}
