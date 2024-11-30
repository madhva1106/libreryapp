import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/textfield_component.dart';
import 'package:libraryappbyshahid/components/passwordfield_component.dart';
import 'package:libraryappbyshahid/components/button_component.dart';
import 'package:libraryappbyshahid/services/student_service.dart';
import 'package:libraryappbyshahid/utils/messages.dart';
class StudentLoginScreen extends StatefulWidget {

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();

  Future login()async{
    if(email.text == "" || pwd.text == ""){
      showMsg(context,"All Fields Are Required", Colors.red);
    }
    await AuthService().login(email.text, pwd.text);
  //  Navigate
    print("loginnnn");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  child: Image(image: AssetImage("images/yalee.png"),),
                ),
                Text("Knowledge",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
                Text("House",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                TextfieldComponent(email,"Email:"),
                PasswordfieldComponent(pwd,"Password:"),
                ButtonComponent(login,"Login"),
                SizedBox(height: 20,),
                TextButton(onPressed: (){}, child: Text("Not Have An Account? Register"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
