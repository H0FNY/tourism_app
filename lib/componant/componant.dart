import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextForm({
  required double height,
  required double width,
  String? Function(String?)? validator,
  TextEditingController? controller,
  TextInputType Type = TextInputType.text,
  bool hide = false,
  IconData? prifxicon,
  IconButton? sufficon,
  String? hinttext,
}) =>
    Container(
      height: height/14,
      padding: EdgeInsets.only(left:4,right: 6, top: 7,bottom: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Row(
        children: [
          if (prifxicon != null)
            Icon(
              prifxicon,
              color: Color(0xff364958),
            ),
          SizedBox(width: 6,),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: Type,
              obscureText: hide,
              cursorColor: Color(0xff364958),
              style: TextStyle(color: Color(0xff364958)),
              decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: TextStyle(
                  color: Color(0xff364958),
                ),
                filled: true,
                fillColor: Color(0xffEDF0F2),
                suffixIcon: sufficon,
                labelStyle: TextStyle(
                  color: Color(0xff364958),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
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
            ),
          ),
        ],
      ),
    );

Future navigate({
  required BuildContext context,
  required Widget widget,
}) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return widget;
  }));
}
