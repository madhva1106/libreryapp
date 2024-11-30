import 'package:flutter/material.dart';
class TextfieldComponent extends StatelessWidget {
  String hintText;
  TextEditingController controller;

  TextfieldComponent(this.controller,this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(14),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.deepPurpleAccent,fontSize: 18),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.deepPurpleAccent,width: 2)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.deepPurpleAccent,width: 2),
          )
        ),
      ),
    );
  }
}
