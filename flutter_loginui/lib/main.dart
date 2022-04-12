// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_loginui/screens/home_page.dart';
import 'package:flutter_loginui/screens/login_page.dart';

import 'backend/app_name.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: Appname.login,
      routes: {
        "/": (context) => LoginPage(),
        Appname.login: (context) => LoginPage(),
        Appname.home: (context) => HomePage()
      },
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(color: Colors.black),
              iconTheme: IconThemeData(color: Colors.black))),
    );
  }
}
