
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myfirstproject/screen/ChatScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> search = [
    "Banana",
    "Mango",
    'Orange'

  ];
  String searchText = "";
  @override
  Widget build(BuildContext context) {



bool isLoggedIn = false;
    final List<List<String>> doctor = [
      ["https://cdn.pixabay.com/photo/2023/12/21/06/23/doctor-8461303_1280.jpg", "Dr Altaf","Cardiologist", "4.5","Qasimabad"],
      ["https://tse2.mm.bing.net/th/id/OIP.lcqX70iqkSZrE-H4Pqo_lAHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3", "Dr Zoya","Cardiologist", "4.5","Qasimabad"],

    ];

    int age  = 10;
    List<String> filterItem = search.where((item)=> item.toLowerCase().contains(searchText.toLowerCase())).toList();

   
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
          backgroundColor: Colors.teal,
      ),
       body:
       Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             // Show different widgets based on value
             isLoggedIn
                 ? const Text(
               'Welcome User!',
               style: TextStyle(fontSize: 24),
             )
                 : const Text(
               'Please Login',
               style: TextStyle(fontSize: 24),
             ),

             const SizedBox(height: 20),

             ElevatedButton(
               onPressed: () {
                 setState(() {
                   isLoggedIn = !isLoggedIn;
                 });
               },
               child: const Text('Change Value'),
             ),
           ],
         ),
       ),

       // Center(
       //   // Ternary Operator
       //   child: age>=18 ? Text("You are adult"):Text("you are under age"),
       // )
       // Padding(
       //   padding: const EdgeInsets.all(8.0),
       //   child: Column(
       //     children: [
       //       TextField(
       //         decoration: InputDecoration(
       //           hintText: 'Search Here',
       //           prefixIcon: Icon(Icons.search),
       //           border: OutlineInputBorder(),
       //         ),
       //         onChanged: (value){
       //           setState(() {
       //             searchText = value;
       //           });
       //         },
       //       ),
       //       SizedBox(height: 10,),
       //       Expanded(child: ListView.builder(
       //           itemCount: filterItem.length,
       //           itemBuilder: (context, index){
       //         return Center(
       //           child: Text(filterItem[index]),
       //         );
       //       }))
       //     ],
       //   ),
       // )
    );
  }

}
