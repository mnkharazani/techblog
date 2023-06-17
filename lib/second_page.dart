import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget{
  var input;
  SecondScreen({required this.input});


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(input),
          ElevatedButton(onPressed: () {

            Navigator.pop(context);

          }
          
          , child: Text("بازگشت"))
        ],
      ),


    );
  }

}