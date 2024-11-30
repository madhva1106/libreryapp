import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  String? btnText;

  VoidCallback callBack;
  ButtonComponent(this.callBack,this.btnText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: callBack,
        child: Text(
          "$btnText",
          style: TextStyle(fontSize: 18,color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14))),
      ),
      height: 50,
    );
  }
}
