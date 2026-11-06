import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,

        appBar: AppBar(
          backgroundColor: Colors.yellow,

          title: const Text('This is App Bar And its title'),
        ),

        drawer: const Drawer(
          backgroundColor: Colors.pink,
          child: Center(child: Text('This is Drawer')),
        ),

        body: const Center(child: Text('Home Screen')),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
