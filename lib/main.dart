import 'package:flutter/material.dart';
import 'package:libraryappbyshahid/admin/admin_addbook.dart';
import 'package:libraryappbyshahid/admin/admin_viewbooks.dart';
import 'package:libraryappbyshahid/admin/admin_viewissuedrequest.dart';
import 'package:libraryappbyshahid/main_screen.dart';
import 'package:libraryappbyshahid/student/student_login_screen.dart';
import 'package:libraryappbyshahid/student/student_register_screen.dart';
import 'package:libraryappbyshahid/student/student_view_books.dart';
import 'main_screen.dart';
import 'admin/admin_login_screen.dart';
import 'admin/admin_dashboard_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: AdminLoginScreen()));
}
