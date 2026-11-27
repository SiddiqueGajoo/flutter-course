import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseReads extends StatefulWidget {
  const FirebaseReads({super.key});

  @override
  State<FirebaseReads> createState() => _FirebaseReadState();
}

class _FirebaseReadState extends State<FirebaseReads> {

  List<String> names = [];
  String ? name ;
  int ? age ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: ()async{

              DocumentSnapshot data = await
                FirebaseFirestore.instance.collection('admin').doc('doctor').get();

              setState(() {
                name = data['name'];
                age = data['age'];
              });
              
            }, child: Text("Get Single document Data")),
            SizedBox(height: 10,),
            Text("Name = $name, \n Age = $age"),

            ElevatedButton(onPressed: ()async{

              QuerySnapshot data = await FirebaseFirestore.instance.collection("admin").get();

              for(var i = 0;i<data.docs.length;i++){
                names.add(data.docs[i]['name']);
              }
              setState(() {

              });


            }, child: Text('Get All document data')),
            Expanded(child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context,index){
                  return Card(
                    child:
                    Text("Name = ${names[index]}"),
                  );
                }))
          ],
        ),
      ),
    );
  }
}

