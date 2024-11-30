import 'package:flutter/material.dart';

void showMsg(BuildContext context, String msg, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      msg,
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: color,
  ),
  );
}
