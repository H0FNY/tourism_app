import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/componant/componant.dart';
import 'package:tourism/screens/Login.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  static String id="Profilepage";
  double width=0,height=0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        backgroundColor: SecondaryColor,
        leadingWidth: 130,
        leading: Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: MainColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                signUserOut();
                // Navigator.pushNamedAndRemoveUntil(context, Login.id, (route) => false);
                Navigator.pushNamed(context, Login.id);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/ace.jpg"),
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
                onTap: () async{
                  ImagePicker imagePicker=ImagePicker();
                  XFile? file= await imagePicker.pickImage(source: ImageSource.gallery);
                  print(file?.path);
                  if(file!=null)
                  {
                    String name =  FirebaseAuth.instance.currentUser!.uid;
                    Reference referenceRoot=FirebaseStorage.instance.ref();
                    Reference imageDir=referenceRoot.child("images");
                    Reference imageToUpload=imageDir.child(name);
                    try {
                      await imageToUpload.putFile(File(file!.path));
                    }catch(e){
                      print("pla");
                    }
                  }
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ace.jpg"),
                  radius: width/5.5,
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
