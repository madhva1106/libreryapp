import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordfieldComponent extends StatelessWidget {
  String? hinttext;
  TextEditingController controller =TextEditingController();

  PasswordfieldComponent(this.controller,this.hinttext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(14),
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 18,color: Colors.deepPurpleAccent),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.deepPurpleAccent),borderRadius: BorderRadius.circular(14)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.deepPurpleAccent),borderRadius: BorderRadius.circular(14))
        ),
      ),
    );
  }
}
