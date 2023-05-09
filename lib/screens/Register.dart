import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tourism/Constants/constants.dart';
import 'package:tourism/screens/Login.dart';
import 'package:tourism/componant/componant.dart';

class Regester extends StatefulWidget {
  static String id = "Register";

  @override
  State<Regester> createState() => _RegesterState();
}

class _RegesterState extends State<Regester> {
  String email="",password="",username="",re_password="",phone="";

  bool hide1 = true, hide2 = true,isreload=false;

  double width = 0,height = 0;

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final passwordController = TextEditingController();

  final copasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return ModalProgressHUD(
      inAsyncCall: isreload,
      child: Scaffold(
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
                    onchange: (value){
                      username=value;
                    },
                    prefxicon: Icon(
                      Icons.person,
                    ),
                    hinttext: 'Username',
                    validator: (value){
                      if(value!.isEmpty)return "Enter Username";
                    }
                  ),
                  SizedBox(
                    height: height / 42,
                  ),
                  TextForm(
                      onchange: (value){
                        email=value;
                      },
                    prefxicon: Icon(Icons.attach_email_rounded),
                    hinttext: 'Email Adress',
                    validator: (value){
                      if(value!.isEmpty)return "Enter Email Address";
                      else if (emailValid.hasMatch(emailController.toString()))return "Enter valid Email";
                    }
                  ),
                  SizedBox(
                    height: height / 42,
                  ),
                  TextForm(
                    Type: TextInputType.number,
                      onchange: (value){
                        phone=value;
                      },
                    prefxicon: Icon(Icons.phone),
                    hinttext: 'Phone Number',
                      validator: (value){
                        if(value!.isEmpty)return "Enter Email Address";
                        else if(value.length<11)return "Enter valid Phone Number";
                      }
                  ),
                  SizedBox(
                    height: height / 42,
                  ),
                  TextForm(
                      onchange: (value){
                        password=value;
                      },
                    prefxicon: Icon(Icons.password),
                    hide: true,
                    hinttext: 'Password',
                      validator: (value){
                        if(value!.isEmpty)return "Enter Password";
                        else if(value.length<8)return "Enter Strong Password";
                      }
                  ),
                  SizedBox(
                    height: height / 42,
                  ),
                  TextForm(
                      onchange: (value){
                        re_password=value;
                      },
                    prefxicon: Icon(Icons.password),
                    hide: true,
                    hinttext: 'Re-Password',
                      validator: (value){
                        if(value!.isEmpty)return "Enter Password";
                        else if (password!=re_password)return "Must Password Equal Re_password";
                      }
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
                      onPressed: () async {
                        if (formKey.currentState!.validate())  {
                          setState(() {
                            isreload=!isreload;
                          });
                          try {
                            await createUser();
                            showsnakebar(
                              context,
                              'Success In Create Account',
                            );
                            navigate(context: context, PageName: Login.id);
                          }on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              showsnakebar(
                                context,
                                'User Not Found',
                              );
                            } else if (e.code == 'wrong-password') {
                              showsnakebar(
                                context,
                                'Wrong Password',
                              );
                            }
                          } catch(e){
                            showsnakebar(
                              context,
                              e.hashCode.toString(),
                            );
                          }
                          setState(() {
                            isreload=!isreload;
                          });
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
      ),
    );
  }

  Future<void> createUser() async {
    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
