import 'package:flutter/material.dart';
import 'package:myfirstproject/LoginPage.dart';
class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[ Center(
          child: ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context) => AlertDialog(
              icon: Icon(Icons.done, color: Colors.green,),
              title: Text("Do Your want to confirm this payment?"),
              content: Text("aapka account khali hojyega"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                }, child:
                Text("Yes", style: TextStyle(
                  color: Colors.red
                ),)),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("No"))
              ],
            ));
          }, child: Text("Logout")),
        ),

          SizedBox(height: 10,),
          TextButton(onPressed: (){
            showDatePicker(context: context, firstDate: DateTime(1999), lastDate: DateTime(2015));
          }, child: Text("Your Birth date")),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          }, child: Text("appointment time"))
      ]),
    );
  }
}

