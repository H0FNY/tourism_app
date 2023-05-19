import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
   Chat({Key? key}) : super(key: key);
  static String id = "Chat_screen";

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
            children: [],
          ),
        ),
      );

  }
}
