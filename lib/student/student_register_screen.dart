import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/button_component.dart';
import 'package:libraryappbyshahid/components/passwordfield_component.dart';
import 'package:libraryappbyshahid/components/textfield_component.dart';
import 'package:libraryappbyshahid/services/student_service.dart';
import 'package:libraryappbyshahid/student/student_login_screen.dart';
import 'package:libraryappbyshahid/utils/messages.dart';

class StudentRegisterScreen extends StatefulWidget {
  const StudentRegisterScreen({Key? key}) : super(key: key);

  @override
  State<StudentRegisterScreen> createState() => _StudentRegisterScreenState();
}

class _StudentRegisterScreenState extends State<StudentRegisterScreen> {
  TextEditingController nm = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  TextEditingController mobile = TextEditingController();

  Future register() async {
    await AuthService().register(nm.text, email.text, pwd.text);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => StudentLoginScreen()));
    showMsg(context, "Student Registered", Colors.green);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  child: Image(
                    image: AssetImage("images/yalee.png"),
                  ),
                ),
                Text(
                  "Knowledge",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.deepPurpleAccent),
                ),
                Text(
                  "House",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.deepPurpleAccent),
                ),
                SizedBox(
                  height: 20,
                ),
                TextfieldComponent(nm, "Name:"),
                TextfieldComponent(email, "Email:"),
                PasswordfieldComponent(pwd, "Password:"),
                TextfieldComponent(mobile, "Mobile:"),
                ButtonComponent(register, "Register"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
