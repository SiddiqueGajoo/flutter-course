import 'dart:math';

import 'package:flutter/material.dart';

class Rolldice extends StatefulWidget {
  const Rolldice({super.key});

  @override
  State<Rolldice> createState() => _RolldiceState();
}

class _RolldiceState extends State<Rolldice> {
  @override
  final randomNumber = Random();

  int number = 1;

  void increment() {
    setState(() {
      if (number < 6) {
        number++;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image(
              image: NetworkImage(
                "https://tse3.mm.bing.net/th/id/OIP.7orcSokVlXOfbpccYVqqjQHaIE?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
              ),
              width: 500,
              height: 500,
            ),
          ),
          Row(
            children: [
              SizedBox(width: 150),

              FloatingActionButton(
                onPressed: increment,

                child: Icon(Icons.navigate_next),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (number > 1) {
                      number--;
                    }
                  });
                },
                child: Icon(Icons.skip_previous),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    number = randomNumber.nextInt(6) + 1;
                  });
                },
                child: Text("Random"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
