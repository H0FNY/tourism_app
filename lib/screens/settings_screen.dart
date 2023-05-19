import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/componant/componant.dart';
import 'package:tourism/screens/profile_screen.dart';

class Setting extends StatelessWidget {
  Setting({Key? key}) : super(key: key);
  static String id = "Settings_screen";

  double width = 0, height = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 12.0, vertical: 5),
          child: Column(
            children: [

            ],
          ),
        ),
      );
  }
}
