import 'package:flutter/material.dart';

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image(image: AssetImage("ss.png"), height: 100, width: 100),
              Image(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1-jqV0xJ4O1gILEbk8JDebz89q18jfVVpuvC8zuOnoBFAFl6RRbmN-IQ&s=10",
                ),
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
