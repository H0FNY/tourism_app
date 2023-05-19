import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/Login.dart';
import 'package:tourism/screens/navigation_bar.dart';

import '../componant/componant.dart';
import '../models/user_model.dart';
import '../shared/shared.dart';

class Authpage extends StatelessWidget {
  Authpage({Key? key}) : super(key: key);
static String id ="Authpage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            if(snapshot.hasData) return NavigationPage();
            else return Login();
          },
        ),
    );
  }
}
