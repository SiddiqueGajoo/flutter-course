import 'package:flutter/material.dart';
import 'package:myfirstproject/screen/search.dart';

void main() {
  runApp(const MaterialApp(
    home: search(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conditional Widget')),

      body: Center(
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
    );
  }
}

