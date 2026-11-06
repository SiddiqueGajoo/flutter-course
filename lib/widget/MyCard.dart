import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return                   Card(
      shadowColor: Colors.white10,

      child:
      Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: BoxBorder.all(
              color: Colors.green,
              width: 2
          ),

        ),
        child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child:
            Image(image: NetworkImage("https://tse2.mm.bing.net/th/id/OIP.b2n1Ry4VTDFzb25Mtj0f6wHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"),fit: BoxFit.cover,)),
      ),

    );
    ;
  }
}
