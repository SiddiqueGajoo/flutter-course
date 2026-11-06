import 'package:flutter/material.dart';
import 'package:myfirstproject/home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final form = GlobalKey<FormState>();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: form,
          child: Column(
            children: [
              Text("Login Page"),
              TextFormField(controller: userEmail),

              SizedBox(height: 10),
              TextFormField(controller: userPass),

              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (userEmail.text == "siddique@gmail.com") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(

                        ),
                      ),
                    );
                  } else if (userPass.text == "12345") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(" Email or password Incorrect"),
                        backgroundColor: Colors.blue,
                      ),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
