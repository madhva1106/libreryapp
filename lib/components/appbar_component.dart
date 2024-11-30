import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSize{

  String? title;
  AppBarComponent(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
      toolbarHeight: 120,
      title: Text("$title",style: TextStyle(color: Colors.white,fontSize:24,fontWeight: FontWeight.bold),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(120);


}
