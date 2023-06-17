import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tech/second_page.dart';

class home extends StatelessWidget{

  TextEditingController familyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: familyController,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.bold),
            decoration: InputDecoration(
           
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(20),
              ),
            focusedBorder: OutlineInputBorder(

              borderSide: BorderSide(
                color: Color.fromARGB(255, 17, 221, 24),
                style: BorderStyle.solid, 
              ),
              borderRadius: BorderRadius.circular(20),
              ),
             // labelText: "Family"
             //helperText: "نام خانوادگی:",
            //  hintText: "نام خانوادگی",
            //  hintStyle: TextStyle(
            //   color: Colors.amber
            //  )
         
            prefixIcon: const Icon(Icons.add_reaction_outlined,color: Colors.purple,
            ),
            suffixText: "کیلوگرم",
            
            
             ),
             keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly
            ]
        ),
        ElevatedButton(onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder:(context) => SecondScreen(input: familyController.text), )
          );
          } 
  
 
           
        , child: Text("صفحه بعد"),
        
        )
      ],)
      
       ),
    );
  }



}