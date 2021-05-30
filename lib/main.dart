import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Center(child: Text("Login Form")),),
        body: Center(
          child: Column(
            children: [
              SizedBox(height:50,),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid mail id as abc@gmail.com'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your secure password'
                  ),
                ),
              ),

            FlatButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),

              SizedBox(height:30,),  
              ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle(fontSize: 15),)),

              SizedBox(height: 100,),
              Text('New User? Create Account')

            ],),
        ) 
      )
    );
  }
}