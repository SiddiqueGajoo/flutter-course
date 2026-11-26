
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseWrite extends StatefulWidget {
  const FirebaseWrite({super.key});

  @override
  State<FirebaseWrite> createState() => _FirebaseWriteState();
}

class _FirebaseWriteState extends State<FirebaseWrite> {
  
  TextEditingController name = TextEditingController ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide()
                )
              ),
            ),
            SizedBox(height: 10,),
            
            ElevatedButton(onPressed: (){
              FirebaseFirestore.instance.collection('ali').doc(name.text.toLowerCase()).update({

                'name': name.text,
                'age': 29,
              });
            }, child: Text('save data'))
          ],
        ),
      ),
    );
  }
}
