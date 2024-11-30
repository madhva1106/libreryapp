import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/admin/admin_addbook.dart';
import 'package:libraryappbyshahid/admin/admin_dashboard_screen.dart';
import 'package:libraryappbyshahid/main_screen.dart';
import 'menuitem_component.dart';
class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Admin"),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person,color: Colors.white,),
              backgroundColor: Color(0xff4e058f),
            ),
          ),
          MenuitemComponent(Icons.home,"Dashboard", Colors.deepPurple,AdminDashboardScreen()),
          MenuitemComponent(Icons.add_card_rounded,"Add Book",Colors.pink[300]!, AdminAddBook()),
          MenuitemComponent(Icons.chrome_reader_mode_rounded,"Chrome Reader",Colors.lightBlue[400]!, AdminAddBook()),
          MenuitemComponent(Icons.flight,"Flight",Colors.green[400]!, AdminAddBook()),
          MenuitemComponent(Icons.move_down,"Move Down",Colors.orange[300]!, AdminAddBook()),
          MenuitemComponent(Icons.logout,"Log Out",Colors.red[600]!, MainScreen()),

        ],
      ),
    );
  }
}
