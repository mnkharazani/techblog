import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech/app.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
 

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

double screenWith=0;
double screenHeight=0;

@override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(context,
      //MaterialPageRoute(builder: (context) => home(),) );
       CupertinoPageRoute(builder: (context) => home(),) );
    }); 

    super.initState();
  }
void getSize(){
 screenWith = MediaQuery.of(context).size.width;
  screenHeight = MediaQuery.of(context).size.height;
}

  @override
  Widget build(Object context) {
    getSize();
    
   return SafeArea(
     child: Scaffold(
   
      body: Column(children: [
        Container(
          height: screenHeight/2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white
          ),
           child: Image(image: AssetImage(AppImages.titleImage),height: 64,),
           alignment: Alignment.bottomCenter,
        ),
        Container(
          height: screenHeight/2,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SpinKitThreeBounce(
                      color: Colors.red,
                      size: 30.0,
                    ),
              ),
            ],
          ),
      
        ),
        
       
   
      ]),
     ),
   );
  }
}