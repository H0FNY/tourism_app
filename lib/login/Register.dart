import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/login/Login.dart';
import 'package:tourism/componant/componant.dart';

class Regester extends StatelessWidget {
  static String id = "Register";

  bool hide1 = true, hide2 = true;

  double width = 0;

  double height = 0;

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final passwordController = TextEditingController();

  final copasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MainColor,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(width / 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 30,
                ),
                Image.asset(
                  'assets/images/Group 320.png',
                  width: width / 1.7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: SecondaryColor,
                            fontSize: width / 13,
                            fontFamily: 'Taile',
                          ),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              color: SecondaryColor,
                              fontSize: width / 14,
                              fontFamily: 'Taile',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 40,
                ),
                TextForm(
                  prefxicon: Icon(
                    Icons.person,
                  ),
                  hinttext: 'Username',
                ),
                SizedBox(
                  height: height / 42,
                ),
                TextForm(
                  prefxicon: Icon(Icons.attach_email_rounded),
                  hinttext: 'Email Adress',
                ),
                SizedBox(
                  height: height / 42,
                ),
                TextForm(
                  prefxicon: Icon(Icons.phone),
                  hinttext: 'Phone Number',
                ),
                SizedBox(
                  height: height / 42,
                ),
                TextForm(
                  prefxicon: Icon(Icons.password),
                  hide: true,
                  hinttext: 'Password',
                ),
                SizedBox(
                  height: height / 42,
                ),
                TextForm(
                  prefxicon: Icon(Icons.password),
                  hide: true,
                  hinttext: 'Re-Password',
                ),
                SizedBox(
                  height: height / 35,
                ),
                SizedBox(
                  width: width / 2.5,
                  height: height / 16,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(SecondaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        navigate(context: context, PageName: Login.id);
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff364958),
                          fontSize: width/18,
                          fontFamily: 'Taile',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: SecondaryColor,
                          fontSize: width/25,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Sign in!',
                          style: TextStyle(
                            color: GreenColor,
                            fontSize: width/25,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
