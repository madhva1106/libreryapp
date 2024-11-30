import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DashboardcardComponent extends StatelessWidget {
  DashboardcardComponent(this.iconData,this.color,this.text,this.value,this.bcolor);

  IconData iconData;
  Color color;
  Color bcolor;
  String text;
  int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      decoration: BoxDecoration(
        color: bcolor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          CircleAvatar(
            minRadius: 30,
            backgroundColor: color,
            child: Icon(iconData,color: Color(0xff989797),size: 36,),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$text",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("$value",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
