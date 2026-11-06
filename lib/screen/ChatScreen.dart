import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({required this.url,  required this.name, super.key});
final url, name;
  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.url),
            ),
            SizedBox(width: 20,),
            Text(widget.name)
          ],
        ),
      ),
    );
  }
}
