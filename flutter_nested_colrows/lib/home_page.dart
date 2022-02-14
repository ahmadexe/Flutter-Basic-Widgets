// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            SizedBox(
              height: 60,
            ),
            Align(
                alignment: Alignment.topRight,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text("JJ"),
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                )),
            Text(
              "XYZ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  color: Colors.brown,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                alignment: Alignment.bottomRight,
                height: 100,
                width: 100,
                color: Colors.grey
              ),
            ),
            
            SizedBox(
              height: 400,
            ),
            Text(
              "ABC",
              style: 
              TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            )

          ]);
        },
      ),
    );
  }
}
