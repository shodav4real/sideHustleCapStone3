// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_page/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Page (Grp 23)',
        theme: ThemeData(accentColor: Colors.green, primaryColor: Colors.grey),
        home: LoginScreen());
  }
}
