import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //It check all the forms of form state (screen)
  final form = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Wrap all your forms into Form and pass the Key so it validate the state
        child: Form(
          key: form,
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email cannot be empty";
                    } else if (!value.contains("@") ||
                        !value.contains("gmail.com")) {
                      return "Plz Write valid email";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // in submit buttons checks  the current state and all the validation
                    if (form.currentState!.validate()) ;
                  });
                },
                child: Text("Submit your detail"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
