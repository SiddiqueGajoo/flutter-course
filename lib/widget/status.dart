import 'package:flutter/material.dart';

import 'MyCard.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Mycard(),
        SizedBox(height: 30,),
        Mycard(),
        SizedBox(height: 30,),Mycard(),
        SizedBox(height: 30,),Mycard(),
        SizedBox(height: 30,),
        Mycard(),
      ],
    );
  }
}
