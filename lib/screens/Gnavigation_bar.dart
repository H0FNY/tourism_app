import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/componant/componant.dart';
import 'package:tourism/screens/Home_screen.dart';
import 'package:tourism/screens/chat_screen.dart';
import 'package:tourism/screens/myservice_screen.dart';
import 'package:tourism/screens/profile_screen.dart';
import 'package:tourism/screens/proposal_screen.dart';
import 'package:tourism/screens/settings_screen.dart';
import 'package:tourism/screens/test.dart';
import 'package:tourism/shared/shared.dart';

import '../models/user_model.dart';

class GNavigationPage extends StatefulWidget {
  const GNavigationPage({Key? key}) : super(key: key);
  static String id = "GNavigationPage_screen";

  @override
  State<GNavigationPage> createState() => _GNavigationPageState();
}

class _GNavigationPageState extends State<GNavigationPage> {
  double width = 0, height = 0;
  int index = 0;
  List<String> name = [
    "Home",
    "My Service",
    "My Proposal",
    "Chat",
    "Test",
  ];
  List pages = [
    Home(),
    MyScervices(),
    MyProposal(),
    Chat(),
    Test(),
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        backgroundColor: SecondaryColor,
        leadingWidth: 150,
        leading: Center(
          child: Text(
            name[index],
            style: TextStyle(
              color: MainColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: () {
                navigate(context: context, PageName: Profile.id);
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(MyAccount.image),
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: pages[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: SecondaryColor.withOpacity(.1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
          child: GNav(
              onTabChange: (ind) {
                setState(() {
                  index = ind;
                });
              },
              selectedIndex: index,
              gap: 15,
              color: SecondaryColor,
              activeColor: GreenColor,
              tabBackgroundColor: SecondaryColor,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.person,
                  text: "My services",
                ),
                GButton(
                  icon: Icons.menu,
                  text: "My Proposal",
                ),
                GButton(
                  icon: Icons.chat,
                  text: "Chat",
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
                ),
              ]),
        ),
      ),
    );
  }
}
