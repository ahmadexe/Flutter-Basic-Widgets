// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_listview/backend/info_arrays.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child:  
          ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(padding: EdgeInsets.all(16.0),
                    //child: Card(
                      child: Column(
                        children: [
                          ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("Images/${InfoArrays.name[index]}.jpg")
                          ),
                        title: Text(InfoArrays.name[index]),
                        trailing: Text(InfoArrays.age[index]),                      
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("Images/${InfoArrays.name[index]}.jpg")
                          ),
                        title: Text("SSS"),
                        trailing: Text(InfoArrays.age[index]),                      
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("Images/${InfoArrays.name[index]}.jpg")
                          ),
                        title: Text("SSS"),
                        trailing: Text(InfoArrays.age[index]),                      
                      ),

                      SizedBox(
                        height: 32,
                      ),
                      Text("DD")
                        ],
                      )
                      
                    //),
                  );
                },              
              ),
           
             
    );
  }
}