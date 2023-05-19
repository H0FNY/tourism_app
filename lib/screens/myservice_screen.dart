import 'package:flutter/material.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/screens/Register.dart';
import 'package:tourism/screens/details_screen.dart';

class MyScervices extends StatelessWidget {
   MyScervices({Key? key}) : super(key: key);
  static String id = "MyScervices_screen";
  double width = 0, height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
        child: Column(
          children: [
            SizedBox(
              height: height / 100,
            ),
            GestureDetector(
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Details();
                  }),
                );
              },
              child: Container(
                width: width,
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
                              backgroundImage:
                                  AssetImage("assets/images/ace.jpg"),
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
                          child: Text(
                            "Ahmed Mohamed Hofny",
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
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Regester();
                                },
                              ),
                            );
                          },
                          icon: Icon(
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
                            "Hello There!\ni will plaaaaaaaaaaaaaa plaaaaaaaaaaaa aaaaaaaaaaa fdsafasd fd aaaaplaaaaa aafdsafdadsaaaaaaaaaa aplaaaaaaaaaaaaaa",
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
                              r"25$",
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
                              onTap: () {},
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
                                      "Contact",
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
            ),
          ],
        ),
      ),
    );
  }
}
