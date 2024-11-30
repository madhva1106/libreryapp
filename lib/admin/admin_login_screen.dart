import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/admin/admin_dashboard_screen.dart';
import 'package:libraryappbyshahid/components/button_component.dart';
import 'package:libraryappbyshahid/components/passwordfield_component.dart';
import 'package:libraryappbyshahid/components/textfield_component.dart';
import 'package:libraryappbyshahid/services/admin_service.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  TextEditingController unm = TextEditingController();
  TextEditingController pwd = TextEditingController();

  Future login()async{
    await AdminService().login(unm.text, pwd.text);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AdminDashboardScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  child: Image(image: AssetImage("images/yalee.png"),),
                ),
                Text("Knowledge",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                Text("House",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
                SizedBox(height: 20,),
                 TextfieldComponent(unm,"Username:"),
                 PasswordfieldComponent(pwd,"Password"),
                 ButtonComponent(login,"Admin Login"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
