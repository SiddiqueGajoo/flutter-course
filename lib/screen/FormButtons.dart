import 'package:flutter/material.dart';

class Formbuttons extends StatefulWidget {
  const Formbuttons({super.key});

  @override
  State<Formbuttons> createState() => _FormbuttonsState();
}

class _FormbuttonsState extends State<Formbuttons> {

  String gender = "";
  String asnwers = "";
  
  bool student = true;
  bool notify = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Select your Gender"),
            SizedBox(height: 8,),
            RadioListTile<String>(
                title: Text("Male"),
                groupValue: gender,
                value: 'Male',
              onChanged: (value){
                  setState(() {
                    gender = value!;
                  });
              },
            ),
            RadioListTile<String>(
                title: Text("Female"),
              groupValue: gender,
              value: 'Female',
              onChanged: (value){
                  setState(() {
                    gender = value!;
                  });
              },
            ),
            Text("Your Gender $gender"),
            SizedBox(height: 10,),

            Text("What is your name"),
            RadioListTile(
                title: Text("Masood"),
                value: 'Masood',
            groupValue: asnwers,
            onChanged: (value){
                  setState(() {
                    asnwers = value!;
                  });
            },
            ),
            RadioListTile(
              title: Text("Akhtiyar"),
              activeColor: Colors.teal,
              value: 'Akhtiyar',
              groupValue: asnwers,
              onChanged: (value){
                setState(() {
                  asnwers = value!;
                });
              },
            ),
            Text("My name is $asnwers"),
            
            Text("CheckBox"),
            SizedBox(height: 8,),
            CheckboxListTile(
                title: Text("Are Your Student"),
                value: student, onChanged: (value){
              setState(() {
                student = value!;
              });
              
            }),
            
            Text("Are you student is = $student"),
            
            SwitchListTile(
              activeColor: Colors.black,
                title: Text("Do you want notifications"),
                value: notify, onChanged: (value){
              setState(() {
                notify = value;
              });
            })
          ],
        ),
      ),
    );
  }
}
