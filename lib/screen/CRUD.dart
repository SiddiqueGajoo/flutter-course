
import 'package:flutter/material.dart';

class CrudOperations extends StatefulWidget {
  const CrudOperations({super.key});

  @override
  State<CrudOperations> createState() => _CrudOperationsState();
}

class _CrudOperationsState extends State<CrudOperations> {
 TextEditingController controller = TextEditingController();
  List<String> name = ["AKHTIYAR", "MASOOD"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            SizedBox(height: 10,),
            TextField(
              controller: controller,

              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                if (controller.text.trim().isEmpty) return;
                name.add(controller.text);
                controller.clear();
});            }, child: Text("Add Item")),
            SizedBox(height: 10,),
            Expanded(child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  title: Text(name[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.edit),
                      InkWell(
                          onTap: (){
                            setState(() {
                              name.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
            }))
          ],
        ),
      )
      ,
    );
  }
}
