import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/componant/componant.dart';
import 'package:tourism/screens/Login.dart';
import 'package:tourism/screens/Tnavigation_bar.dart';
import 'package:tourism/shared/shared.dart';

import '../models/post_model.dart';
import '../models/user_model.dart';
import 'Gnavigation_bar.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);
  static String id = "Profilepage";

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double width = 0, height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        backgroundColor: SecondaryColor,
        leadingWidth: 60,
        leading: GestureDetector(
          onTap: (){
            if(MyAccount.tourist)
            Navigator.pushNamedAndRemoveUntil(context, TNavigationPage.id, (route) => false);
            else{
              Navigator.pushNamedAndRemoveUntil(context, GNavigationPage.id, (route) => false);
            }
          },
          child: Icon(
            Icons.arrow_back_outlined,
            color: MainColor,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
              color: MainColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                signUserOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, Login.id, (route) => false);
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(MyAccount.image),
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  ImagePicker imagePicker = ImagePicker();
                  XFile? file =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (file != null) {
                    Reference referenceRoot = FirebaseStorage.instance.ref();
                    Reference imageDir = referenceRoot.child("images");
                    Reference imageToUpload =
                        imageDir.child(SignedinUser.user!.uid);
                    try {
                      await imageToUpload.putFile(File(file!.path));
                      ImageUrl = await FirebaseStorage.instance
                          .ref()
                          .child('images/${SignedinUser.user!.uid}')
                          .getDownloadURL();
                      var data = await FirebaseFirestore.instance
                          .collection("Users")
                          .doc(SignedinUser.user!.uid)
                          .get();
                      await FirebaseFirestore.instance
                          .collection("Users")
                          .doc(SignedinUser.user!.uid)
                          .update({
                        "image": ImageUrl,
                      });

                      setState(() {
                        MyAccount.image = ImageUrl;
                      });
                    } catch (e) {
                      print("pla");
                    }
                  }
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(MyAccount.image),
                  radius: width / 5.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  signUserOut() {
    FirebaseAuth.instance.signOut();
  }
}
