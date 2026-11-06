import 'package:flutter/material.dart';

class MarksheetScreen extends StatelessWidget {
  const MarksheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Basic Variables for Student Information

    String name = "Siddique";
    String fname = "Aslam";
    String sub1 = "Math";
    String sub2 = "Urdu";
    String sub3 = "Sindhi";
    String sub4 = "English";

    int totalSubMarks = 400;
    int sub1Marks = 57;
    int sub2Marks = 66;
    int sub3Marks = 83;
    int sub4Marks = 67;

    int obtMarks = sub1Marks + sub2Marks + sub3Marks + sub4Marks;

    String Grade1, Grade2, Grade3, Grade4;

    double percentage = obtMarks / totalSubMarks * 100;

    if (sub1Marks < 50) {
      Grade1 = 'F';
    } else if (sub1Marks >= 50 && sub1Marks <= 60) {
      Grade1 = 'D';
    } else if (sub1Marks >= 60 && sub1Marks <= 70) {
      Grade1 = 'C';
    } else if (sub1Marks >= 70 && sub1Marks <= 80) {
      Grade1 = 'B';
    } else {
      Grade1 = 'A';
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: "Marksheet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: "Certificate",
          ),
        ],
      ),

      appBar: AppBar(
        title: const Text('Student Marksheet'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo from Assets
              Image.asset('logo.jpeg', height: 80, width: 80),
              const SizedBox(height: 10),
              const Text(
                'SCHOOL OF TECHNOLOGY',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Student Info Box
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Student Name: $name',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Father Name: $fname',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Table Header
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                color: Colors.orange.shade100,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Subject',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Total',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Obt',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Text(
                        'Grade',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),

              // Subject 1 Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex: 3, child: Text(sub1)),
                  Expanded(flex: 2, child: Text(totalSubMarks.toString())),
                  Expanded(flex: 2, child: Text(sub1Marks.toString())),
                  Expanded(flex: 0, child: Text(Grade1)),
                ],
              ),
              const Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex: 3, child: Text(sub2)),
                  Expanded(flex: 2, child: Text(totalSubMarks.toString())),
                  Expanded(flex: 2, child: Text(sub2Marks.toString())),
                  Expanded(flex: 0, child: Text("D")),
                ],
              ),
              const Divider(),

              // Subject 3 Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex: 3, child: Text(sub3)),
                  Expanded(flex: 2, child: Text(totalSubMarks.toString())),
                  Expanded(flex: 2, child: Text(sub3Marks.toString())),
                  Expanded(flex: 0, child: Text("D")),
                ],
              ),
              const Divider(),

              // Subject 4 Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex: 3, child: Text(sub4)),
                  Expanded(flex: 2, child: Text(totalSubMarks.toString())),
                  Expanded(flex: 2, child: Text(sub4Marks.toString())),
                  Expanded(flex: 0, child: Text("D")),
                ],
              ),
              const Divider(),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 25),
                  Text("Total Marks $totalSubMarks "),
                  Text("Obtained Marks $obtMarks"),
                  Text("Percenatge ${percentage.toStringAsFixed(2)}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
