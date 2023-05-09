import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/Login.dart';

import 'Home_screen.dart';

class Authpage extends StatelessWidget {
  const Authpage({Key? key}) : super(key: key);
static String id ="Authpage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            if(snapshot.hasData)return Home();
            else return Login();
          },
        ),
    );
  }
}
