import 'package:flutter/material.dart';
import 'package:myfirstproject/LoginPage.dart';
import 'package:myfirstproject/main.dart';
class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("My App title"),
        actions: [
          PopupMenuButton(
            color: Colors.green,
              itemBuilder: (context)=> [
            
            PopupMenuItem(child: Text("Setting",style: TextStyle(color: Colors.white),)),
            PopupMenuItem(child: Text("Camera")),
            PopupMenuItem(child: Text("Gallery")),
            PopupMenuItem(child: Text("Profile")),
        ])
        ],
      ),
      body: Column(
        children:[
          Center(
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
            showDatePicker(context: context, firstDate: DateTime(1999), lastDate: DateTime.now());
          }, child: Text("Your Birth date")),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          }, child: Text("appointment time")),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            showDialog(context: context, builder: (context)=>
            SimpleDialog(
              title: Text('Select Your Course'),
              children: [
                SimpleDialogOption(
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your Select Flutter Course")));

                  }, child: Text("Flutter")),
                ),
                SimpleDialogOption(child: Text("Java"),),
                SimpleDialogOption(child: Text("Python"),)
              ],
            ));
          }, child: Text("Simple Dialog")),

          SizedBox(height: 10,),
          TextButton(onPressed: (){
            showAboutDialog(context: context,
            applicationName: "Doctor Appointment",
              applicationVersion: "1.0.0",
              applicationIcon: Image(image: AssetImage("logo.jpeg"),height: 100,width: 100,)
            );
          }, child: Text("About")),

          SizedBox(height: 10,),
          TextButton(onPressed: (){
           showModalBottomSheet(context: context, builder: (context)=>
               Container(
                 height: 200,
                 width: double.infinity,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ListTile(
                     leading: Icon(Icons.home),
                     title: Text("Home"),
                   ),
                 ),
               )
           );
          }, child: Text("Show Model Bottom Sheet Dialog")),

          SizedBox(height: 10,),
          TextButton(onPressed: (){
            showDialog(context: context, builder: (context)=>Dialog(
              shape: BoxBorder.all(
                
              ),
              constraints: BoxConstraints(

              ),
              child: Container(
                height: 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check_circle,color: Colors.green,

                    ),
                    Text("You have successfully added your attendence"),
                  ],
                ),
              ),
            ));
          },

     child: Text("Custom dialog")),
          
        ]),
    );
  }
}

