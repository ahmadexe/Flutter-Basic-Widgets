import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          children: [Container(
            margin: EdgeInsets.only(top: 50,bottom: 600),
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
              
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
              Container(
                child: Column(
                  children: [Text("S")],
                ),
                width: 160.0,
                color: Colors.red,
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
              ],
            ),
            ),
        
          ),
          
          Text("DSH")
          
          ]
        )
        
        

        );
  }
}
