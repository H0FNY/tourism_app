import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String id ="Home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            signUserOut();
          }, icon: Icon(Icons.logout)),
        ],
      ),
      bottomNavigationBar: ,
    );
  }
  signUserOut(){
    FirebaseAuth.instance.signOut();
  }
}
