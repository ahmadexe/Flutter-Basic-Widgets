// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80),
            ),
            color: Colors.indigo,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 70,
                left: 0,
                child: Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                ),
              ),
              //Text("Greetings!", style: TextStyle(fontSize: 22, color: Colors.blue, fontWeight: FontWeight.bold),),
              Positioned(
                  top: 90,
                  left: 20,
                  child: Text(
                    "Greetings",
                    style: TextStyle(fontSize: 22, color: Colors.indigo),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        InkWell(
          onTap: () {
            print("Works");
          },
          child: Container(
            height: 200,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.5), //(x,y)
                  blurRadius: 6.0,
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/tomoon.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  height: 200,
                  width: 185,
                  alignment: Alignment.center,
                  child: Text(
                    "Hello\nWorld!",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          height: 40,
        ),

        Row(
          children: [
            SizedBox(
              width: 45,
            ),
            InkWell(
              onTap: (){
                print("At Home");
              },
              child: Container(
                height: 70,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                  //color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.5),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Icon(Icons.home, color: Colors.indigo,),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: (){
                print("At Lock");
              },
              child: Container(
                height: 70,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                  //color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.5),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Icon(Icons.lock, color: Colors.indigo,),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: (){
                print("At Create");
              },
              child: Container(
                height: 70,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                  //color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.5),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Icon(Icons.create, color: Colors.indigo,),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: (){
                print("At Stack");
              },
              child: Container(
                height: 70,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                  //color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 1.5),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Icon(Icons.format_align_justify, color: Colors.indigo,),
              ),
            ),
          ],
        )


      ]),
    );
  }
}
