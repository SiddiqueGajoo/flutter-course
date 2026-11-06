import 'package:flutter/material.dart';
import 'package:myfirstproject/LoginPage.dart';
import 'package:myfirstproject/MyTextField.dart';
import 'package:myfirstproject/widget/resuableformfield.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {

  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            children: [
              MyTextField(controller: name, label: "Name", icon: Icons.person_outline),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
              }, child: Icon(Icons.arrow_forward_sharp))
            ],
          ),
        ),
      ),
    );
  }
}





