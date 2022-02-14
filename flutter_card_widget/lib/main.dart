import 'package:flutter/material.dart';

import 'home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => HomeScreen(),
      },      
    );
  }
}