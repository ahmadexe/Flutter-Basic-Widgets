import 'package:flutter/material.dart';
import 'package:flutter_google_navbar/responsive/mobile_app.dart';

void main(List<String> args) {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MobileApp(),
    );
  }
}