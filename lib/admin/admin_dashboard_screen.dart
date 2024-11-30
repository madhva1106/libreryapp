import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/components/appbar_component.dart';
import 'package:libraryappbyshahid/components/drawer_component.dart';
import 'package:libraryappbyshahid/components/bookcard_component.dart';
import 'package:libraryappbyshahid/components/dashboardcard_component.dart';
import 'package:libraryappbyshahid/services/dashboard_service.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  int tbooks = 0;
  Future showValues() async {
    int books = await DashboardService().getCount("books");

    setState(() {
      tbooks = books;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerComponent(),
      appBar: AppBarComponent("Dashboard"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DashboardcardComponent(Icons.book, Colors.deepPurpleAccent,
                  "Books", tbooks, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
