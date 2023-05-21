import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class MyProposal extends StatelessWidget {
  MyProposal({Key? key}) : super(key: key);
  double width = 0, height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return ProposalPost(
      width: width,
      height: height,
      title: "myServices[index].title",
      desc: "myServices[index].description",
      price: "myServices[index].price",
      time: "myServices[index].time",
      UserId: "myServices[index].UserID",
    );
  }
}

class ProposalPost extends StatelessWidget {
  const ProposalPost({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.desc,
    required this.price,
    required this.time,
    required this.UserId,
  });


  final String title;
  final double width;
  final double height;
  final String desc;
  final String price;
  final String time;
  final String UserId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 4),
      padding: EdgeInsets.only(top: 8, bottom: 12, right: 8, left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: SecondaryColor.withOpacity(.1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://ih1.redbubble.net/image.3218155340.4196/st,small,507x507-pad,600x600,f8f8f8.jpg"),
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
                      "D.Mohamed Ramadan",
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
                      "At 15:03 21-05",
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
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Luxor",
                style: TextStyle(
                  color: GreenColor,
                  fontSize: width / 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  "asdfdasfl klfk dslafk;dlf kk ;lafl;d",
                  style: TextStyle(
                    fontSize: width / 25,
                    color: SecondaryColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
            child: Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: SecondaryColor,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                r"Proposal Price : 25$",
                style: TextStyle(
                  color: SecondaryColor,
                  fontSize: width / 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Proposal status",
                style: TextStyle(
                  color: SecondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: width / 22,
                ),
              ),
              SizedBox(width: 1,),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  height: height / 30,
                  decoration: BoxDecoration(
                      color: Color(0xffB98802),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width / 27,
                      ),
                      child: Text(
                        "pending",
                        style: TextStyle(
                          color: SecondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: width / 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  height: height / 30,
                  decoration: BoxDecoration(
                      color: Color(0xffB90202),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width / 28,
                      ),
                      child: Text(
                        "Cancel Proposal",
                        style: TextStyle(
                          color: SecondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: width / 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
