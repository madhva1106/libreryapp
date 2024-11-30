import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/admin/admin_addbook.dart';
import 'package:libraryappbyshahid/admin/admin_dashboard_screen.dart';
import 'package:libraryappbyshahid/main_screen.dart';
import 'package:libraryappbyshahid/student/student_view_books.dart';
import 'menuitem_component.dart';

class StudentDrawerCompnet extends StatelessWidget {
  const StudentDrawerCompnet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Student"),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
              backgroundColor: Color(0xff4e058f),
            ),
          ),
          MenuitemComponent(Icons.home_outlined, "All Books", Colors.teal,
              StudentViewBooks()),
          MenuitemComponent(Icons.download_for_offline_outlined, "Issued Book",
              Colors.pink[300]!,StudentViewBooks()),
          MenuitemComponent(Icons.pending_outlined, "Track Status",
              Colors.green[400]!, StudentViewBooks()),
          MenuitemComponent(
              Icons.logout, "All Books", Colors.red[300]!, MainScreen()),
        ],
      ),
    );
  }
}
