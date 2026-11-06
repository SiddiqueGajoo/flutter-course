import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({required this.controller, required this.label,
    required this.icon,
    super.key});

  final  controller,label,icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.yellow.shade700,),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
