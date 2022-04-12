// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_loginui/backend/app_name.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
 

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool validState = false;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController usernameController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();
    String name = "abc";
    String pass = "123";
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 430,
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/loginimg.png"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(height: 60),
          Container(
            height: 200,
            width: 400,
            child: Form(
              key: _formKey,
                child: Column(
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  validator: (val){
                    if (val!.isEmpty){
                      return "Username can't be empty";
                    }
                    else if (val == "abc"){
                      return null;
                    }
                    return "Invalid input";
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                  obscureText: true,
                  validator: (value){
                    if (value!.isEmpty){
                      return "Password can't be epmty";
                    }
                    else if (value == "123"){
                      return null;
                    }
                    else{
                      return "Invalid input";
                    }
                  },
                ),
              ],
            )),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () async {
              if (_formKey.currentState!.validate()){
                setState(() {
                validState = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, Appname.home);
                setState(() {
                validState = false;
                });
              }
            },
            child: AnimatedContainer(duration: Duration(seconds: 1),
            alignment: Alignment.center,
            height: validState? 70 : 50,
            width: validState? 70 : 90,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius:  BorderRadius.circular(validState? 50 : 8)
            ),
            child: validState? Icon(Icons.done) : Text("Login", style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),),
            ),
          )
        ],
      ),
    );
  }
}
