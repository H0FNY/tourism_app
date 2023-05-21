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
            "title":"Ain Shams",
            "UserID":"QkhlIaHNrzeJhH52BHwNSCzZTOb2",
            "description": "Shamssssssssssssss ya dawlaaaaaaa is famous city called balad 7000 sana hadarah",
            "price":"70",
            "time":DateTime.now().toString(),
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
