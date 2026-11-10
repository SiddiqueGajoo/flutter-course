import 'package:flutter/material.dart';
import 'package:myfirstproject/screen/ChatScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}
final List<List<String>> doctor = [
  ["https://cdn.pixabay.com/photo/2023/12/21/06/23/doctor-8461303_1280.jpg", "Dr Altaf","Cardiologist", "4.5","Qasimabad",],
  ["https://tse2.mm.bing.net/th/id/OIP.lcqX70iqkSZrE-H4Pqo_lAHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3", "Dr Zoya","Neurologist", "4.5","Qasimabad"],
  ["https://cdn.pixabay.com/photo/2023/12/21/06/23/doctor-8461303_1280.jpg", "Dr Deedar","Cardiologist", "4.5","Qasimabad",],

];


class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: doctor.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){

            bool isBooked = doctor[index].contains("isBooked");

            return Card(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(doctor[index][0]),
              ),
              SizedBox(width: 10,),
              Text(doctor[index][1],style: GoogleFonts.lateef(
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                )
              ),),
              SizedBox(width: 10,),
              Text(doctor[index][2]),
              SizedBox(width: 10,),

              isBooked ? TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Chatscreen(url: doctor[index][0], name: doctor[index][1], specialization: doctor[index][2])));
              }, child: Text("Chat Now"))
                  :
              TextButton(onPressed: (){
                setState(() {
                  doctor[index].add("isBooked");
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Booked")));
                });
              }, child: Text("Book Now"))

            ],
          ),
        );

      }),

    );
  }
}
