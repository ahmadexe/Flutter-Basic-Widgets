import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Home Page"),
          
        ),
        body: 
          Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 60,
                    color: Colors.black,
                    child: Text("Go Back", style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          )
    
      ),
    );
  }
}