import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContactHomePage());
  }
}

class ContactHomePage extends StatelessWidget {
  const ContactHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Contacts"), backgroundColor: Colors.blue),

      // Drawer
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.blue,
              child: Column(
                children: [
                  Icon(Icons.contacts, size: 60, color: Colors.white),
                  Text(
                    "Contact App",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),

            ListTile(leading: Icon(Icons.home), title: Text("Home")),

            ListTile(leading: Icon(Icons.contacts), title: Text("Contacts")),

            ListTile(leading: Icon(Icons.favorite), title: Text("Favorites")),

            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 400,
              child: Image.network(
                "https://images.unsplash.com/photo-1529156069898-49953e39b3ac",
                fit: BoxFit.cover,
              ),
            ),

            Text(
              "My Contacts",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Text(
              "Manage your friends and family",
              style: TextStyle(fontSize: 16),
            ),

            Text(
              "Contact List",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // Contact 1
            Row(
              children: [
                Icon(Icons.person, size: 50, color: Colors.blue),

                Column(
                  children: [
                    Text(
                      "Ali Khan",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("0300-1234567"),
                  ],
                ),
              ],
            ),

            // Contact 2
            Row(
              children: [
                Icon(Icons.person, size: 50, color: Colors.green),

                Column(
                  children: [
                    Text(
                      "Ahmed Ali",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("0312-7654321"),
                  ],
                ),
              ],
            ),

            // Contact 3
            Row(
              children: [
                Icon(Icons.person, size: 50, color: Colors.orange),

                Column(
                  children: [
                    Text(
                      "Sara Khan",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("0321-9876543"),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, size: 50, color: Colors.orange),

                Column(
                  children: [
                    Text(
                      "Sara Khan",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("0321-9876543"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),

          NavigationDestination(icon: Icon(Icons.contacts), label: "Contacts"),

          NavigationDestination(icon: Icon(Icons.favorite), label: "Favorites"),
        ],
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
