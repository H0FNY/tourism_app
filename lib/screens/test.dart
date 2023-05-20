import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FirebaseFirestore.instance
              .collection('Guide_Services').add({
            "UserID":"gtb81QjlnqPpjjSFEjnwBgDyKvz1",
            "description": "adsfdslfldf",
            "price":"25",
            "time":DateTime.now().toString(),
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
