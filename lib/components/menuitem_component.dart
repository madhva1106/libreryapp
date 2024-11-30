import 'package:flutter/material.dart';

class MenuitemComponent extends StatelessWidget {
  IconData icondata;
  String text;
  Color color;
  var screen;

  MenuitemComponent(this.icondata, this.text, this.color, this.screen);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      leading: Icon(
        icondata,
        color: color,
        size: 30,
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
