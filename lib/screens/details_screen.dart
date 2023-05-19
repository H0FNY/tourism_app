import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/animation.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);
  double height = 0, width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: double.infinity,
            child: Image.network(
              "https://www.eiffeltowertour.com/wp-content/uploads/2021/01/Eiffel-Tower-in-Paris-at-sunset.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: height / 20,
            left: width / 40,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: height / 18,
                width: width / 9,
                decoration: BoxDecoration(
                  color: MainColor.withOpacity(.6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: width / 12,
                  color: SecondaryColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height * .7,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [.1, 0.5, 0.8, 1],
                  colors: [
                    MainColor,
                    MainColor.withOpacity(.85),
                    MainColor.withOpacity(.62),
                    MainColor.withOpacity(0.01)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: width / 13,
            width: width * .8,
            child: Container(
              height: height / 1.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeAnimation(
                    delay: .2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Paris",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            fontSize: width / 8,
                            color: SecondaryColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: SecondaryColor,
                              size: width / 15,
                            ),
                            SizedBox(
                              width: width / 100,
                            ),
                            Text(
                              "3.8",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: width / 25,
                                color: SecondaryColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 500,
                  ),
                  FadeAnimation(
                    delay: .3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.wallet,
                              color: SecondaryColor,
                              size: width / 18,
                            ),
                            SizedBox(
                              width: width / 80,
                            ),
                            RichText(
                              text: TextSpan(
                                text: r"$",
                                style: TextStyle(
                                    fontSize: width / 25,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: "30",
                                    style: TextStyle(fontSize: width / 25),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: SecondaryColor,
                              size: width / 18,
                            ),
                            SizedBox(
                              width: width / 80,
                            ),
                            RichText(
                              text: TextSpan(
                                text: r"Egypt",
                                style: TextStyle(
                                  fontSize: width / 25,
                                ),
                                children: [
                                  TextSpan(
                                    text: " / Luxor",
                                    style: TextStyle(fontSize: width / 26),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  FadeAnimation(
                    delay: .5,
                    child: Container(
                      height: height / 4,
                      child: SingleChildScrollView(
                        child: Text(
                          "Paris is a buitful city and we can see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower see Tower see Evil Tower see Evil Tower see Evil Tower see Evil Tower and lover musuim pla pla pla and we can buy french perfum pla pla pla ",
                          style: TextStyle(
                            fontSize: width / 23,
                            color: SecondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  FadeAnimation(
                    delay: .6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: width / 10,
                          color: SecondaryColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: height / 15,
                              decoration: BoxDecoration(
                                  color: GreenColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    color: SecondaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: width / 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}