import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            child: Stack(
             children: [
               Container(
                 height: 200,
                 width: 200,
                 color: Colors.red,
               ),
               Container(
                 
                 height: 100,
                 width: 100,
                 color: Colors.green,
               )
             ], 
            )
          )
          
        ],
      ),
    );
  }
}