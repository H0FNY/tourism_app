import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/Constants/constants.dart';

Widget TextForm({
  String? Function(String?)? validator,
  TextEditingController? controller,
  void Function(String)? onchange,
  TextInputType Type = TextInputType.text,
  bool hide = false,
  Icon? prefxicon,
  IconButton? sufficon,
  String? hinttext,
}) =>
    TextFormField(
      onChanged: onchange,
      controller: controller,
      keyboardType: Type,
      obscureText: hide,
      cursorColor:MainColor,
      style: TextStyle(color: MainColor),
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
          color: MainColor,
        ),
        filled: true,
        fillColor: SecondaryColor,
        suffixIcon: sufficon,
        prefixIcon: prefxicon,
        prefixIconColor: MainColor,
        labelStyle: TextStyle(
          color: MainColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: SecondaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: SecondaryColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      validator: validator,
    );

Future navigate({
  required BuildContext context,
  required String PageName,
}) {
  return Navigator.pushNamed(context,PageName );
}


void showsnakebar(BuildContext context, String messege) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(20),
      duration: const Duration(milliseconds: 1500),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Text(
        messege,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
}
