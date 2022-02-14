// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        createCard(),
        SizedBox(
          height: 20,
        ),
        createCardRounded(),
      ]),
    );
  }
}

Widget createCard() {
  return Card(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: [
          Text(
            "Time is but a stubborn Illusion",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "Albert Einstein",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}

Widget createCardRounded() {
  return Card(
    elevation: 6.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Material(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          children: [
            Text(
              "Time is but a stubborn Illusion",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Albert Einstein",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                ListTile(onTap: (){print("Works");},leading: Icon(Icons.done),)
              ],
            )  
          ],
        
        ),
        
      ),
      
    ),
  );
}
