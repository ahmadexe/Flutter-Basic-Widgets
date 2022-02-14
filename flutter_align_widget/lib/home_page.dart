import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 50,
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      )
    ]));
  }
}
