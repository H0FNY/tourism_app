import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tourism/login/Register.dart';
import 'package:tourism/componant/componant.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hide = true;
  double width = 0;
  double height = 0;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff364958),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(width / 15),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height / 18,
                    ),
                    Image.asset(
                      'images/Group 320.png',
                      width: width / 1.5,
                    ),
                    SizedBox(
                      height: height / 9,
                    ),
                    TextForm(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "a";
                          }
                        },
                        height: height,
                        width: width,
                        prifxicon: Icons.person,
                        hinttext: 'Username'),
                    SizedBox(
                      height: height / 20,
                    ),
                    TextForm(
                      height: height,
                      width: width,
                      prifxicon: Icons.password,
                      hide: true,
                      hinttext: 'Password',
                    ),
                    SizedBox(
                      height: height / 10,
                    ),
                    SizedBox(
                      width: width / 2,
                      height: height / 15,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                          ),
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              navigate(context: context, widget: Login());
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xff364958),
                              fontSize: 20,
                            ),
                          )),
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  bottom: height/8.5,
                  child: Row(
                    children: [
                      Text('Forget Your',style: TextStyle(color: Colors.white),),
                      TextButton(
                        onPressed: () {},
                        child: Text('Password',style: TextStyle(color: Colors.green),),
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
