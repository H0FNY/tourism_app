import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/screens/Register.dart';
import 'package:tourism/screens/details_screen.dart';

import '../models/post_model.dart';
import '../models/user_model.dart';
import '../shared/shared.dart';

class MyScervices extends StatelessWidget {
   MyScervices({Key? key}) : super(key: key);
  static String id = "MyScervices_screen";
  double width = 0, height = 0;
   final animationcontroller = ScrollController();

   Future getdata() async {
     myServices=[];
     await FirebaseFirestore.instance
         .collection('Guide_Services').orderBy('time',descending: true).where("UserID",isEqualTo: "gtb81QjlnqPpjjSFEjnwBgDyKvz1")
         .get()
         .then((value) {
       value.docs.forEach((element) {
         myServices.add(PostDataModel.fromJson(element.data()));
         // print(element.data());
       });
     });
     return postsList;
   }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return FutureBuilder(
      future: getdata(),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        else if (snapshot.hasData){
          return Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  controller: animationcontroller,
                  itemCount: myServices.length,
                  itemBuilder: (context, index) {
                    return MyPost(
                      width: width,
                      height: height,
                      desc: myServices[index].description,
                      price: myServices[index].price,
                      time: myServices[index].time,
                      UserId: myServices[index].UserID,
                    );
                  },
                ),
              ),
            ],
          );
        }
        else {
          return Text("Error");
        }
      },
    );
  }
}


class MyPost extends StatelessWidget {
  MyPost({
    required this.width,
    required this.height,
    required this.desc,
    required this.price,
    required this.time,
    required this.UserId,
  });

  final double width;
  final double height;
  final String desc;
  final String price;
  final String time;
  final String UserId;

  late final UserModel userModel;

  @override
  getdata() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(UserId)
        .get()
        .then((value) {
      // print(value.data());
      userModel =UserModel.fromJson(value.data());
      return userModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getdata(),
      builder: (context,snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Column();
        }
        else {
          return GestureDetector(
            onLongPress: () {
              showDialog(
                  useSafeArea: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.zero,
                      contentPadding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: width / 8,
                              ),
                              CircleAvatar(
                                child: CircleAvatar(
                                  backgroundImage:
                                  AssetImage("assets/images/ace.jpg"),
                                  radius: width / 19 - 1.5,
                                ),
                                backgroundColor: Colors.white,
                                radius: width / 19,
                              ),
                              SizedBox(
                                width: width/28,
                              ),
                              Expanded(
                                child: Text(
                                  "Ahmed Mohamed Hofny nasreldeeeen",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: SecondaryColor,
                                    fontSize: width / 25,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: width/20),
                                padding: EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: SecondaryColor,
                                ),
                                child: GestureDetector(
                                  onTap:(){
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            width: width / 1.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MainColor,
                            ),
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFormField(
                                  style: TextStyle(
                                    color: SecondaryColor,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: SecondaryColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: SecondaryColor,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                    labelStyle: TextStyle(
                                      color: SecondaryColor,
                                    ),
                                  ),
                                  initialValue: "ahmed plapla ",
                                  showCursor: true,
                                  cursorColor: SecondaryColor,
                                  maxLines: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.transparent,
                                        insetPadding: EdgeInsets.zero,
                                        contentPadding: EdgeInsets.zero,
                                        clipBehavior: Clip.none,
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                color: SecondaryColor,
                                              ),
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 20, 20, 20),
                                              child: Text(
                                                "Are you sure you want to delete this service?",
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 16,
                                                        vertical: 10),
                                                    margin:
                                                    const EdgeInsets.all(
                                                        8),
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(10),
                                                    ),
                                                    child: Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                        color: SecondaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    padding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 16,
                                                        vertical: 10),
                                                    margin: EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(10),
                                                    ),
                                                    child: Text(
                                                      "Yes",
                                                      style: TextStyle(
                                                        color: SecondaryColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: SecondaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: SecondaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                      color: GreenColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 13,vertical: 4),
              padding: EdgeInsets.only(top: 8, bottom: 12, right: 8, left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: SecondaryColor.withOpacity(.1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: CircleAvatar(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(userModel!.image),
                            radius: width / 19 - 1.5,
                          ),
                          backgroundColor: Colors.white,
                          radius: width / 19,
                        ),
                      ),
                      SizedBox(
                        width: width / 50,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userModel.username,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: SecondaryColor,
                                fontSize: width / 25,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "At "+time.substring(11,16)+" "+time.substring(5,10),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: SecondaryColor.withOpacity(.5),
                                fontSize: width / 35,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite_outline,
                          color: SecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          desc,
                          style: TextStyle(
                            fontSize: width / 22,
                            color: SecondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: GreenColor,
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                              color: GreenColor,
                              fontSize: width / 25,
                            ),
                          ),
                          Text(
                            " (320) ",
                            style: TextStyle(
                              color: SecondaryColor,
                              fontSize: width / 25,
                            ),
                          ),
                          Text(
                            " -  From ",
                            style: TextStyle(
                              color: SecondaryColor,
                              fontSize: width / 25,
                            ),
                          ),
                          Text(
                            price + r"$",
                            style: TextStyle(
                              color: SecondaryColor,
                              fontSize: width / 25,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Details();
                                }),
                              );
                            },
                            child: Container(
                              height: height / 30,
                              decoration: BoxDecoration(
                                  color: SecondaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width / 22,
                                  ),
                                  child: Text(
                                    "Preview",
                                    style: TextStyle(
                                      color: GreenColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width / 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}