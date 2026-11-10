import 'package:flutter/material.dart';
import 'package:myfirstproject/screen/ChatScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}
final List<List<String>> doctor = [
  ["https://cdn.pixabay.com/photo/2023/12/21/06/23/doctor-8461303_1280.jpg", "ڊاڪٽر الطاف","Cardiologist", "4.5","Qasimabad"],
  ["https://tse2.mm.bing.net/th/id/OIP.lcqX70iqkSZrE-H4Pqo_lAHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3", "Dr Zoya","Cardiologist", "4.5","Qasimabad"],

];


class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctors"),
      ),

      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: doctor.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        itemBuilder: (context, index) {

          // Check booking status
          bool isBooked = doctor[index].contains("isBooked");

          return Card(
            elevation: 4,

            child: Padding(
              padding: EdgeInsets.all(8),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(doctor[index][0]),
                  ),

                  SizedBox(height: 8),

                  Text(
                    doctor[index][1],
                    style: GoogleFonts.lateef(
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text(
                    doctor[index][2],
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 10),

                  // Booking and Chat condition
                  isBooked

                      ? ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chatscreen(
                            url: doctor[index][0],
                            name: doctor[index][1],
                            specialization: doctor[index][2],
                          ),
                        ),
                      );
                    },
                    child: Text("Chat Now"),
                  )

                      : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        doctor[index].add("isBooked");
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Doctor Booked"),
                        ),
                      );
                    },
                    child: Text("Book Now"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
