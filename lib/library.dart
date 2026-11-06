import 'package:flutter/material.dart';

class LibraryApp extends StatelessWidget {
  const LibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LibraryHomePage());
  }
}

class LibraryHomePage extends StatelessWidget {
  const LibraryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("My Library"), backgroundColor: Colors.blue),

        // Drawer
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 150,
                color: Colors.blue,
                child: Column(
                  children: [
                    Icon(Icons.library_books, size: 60, color: Colors.white),
                    Text(
                      "Library Menu",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),

              ListTile(leading: Icon(Icons.home), title: Text("Home")),

              ListTile(leading: Icon(Icons.book), title: Text("Books")),

              ListTile(leading: Icon(Icons.person), title: Text("Students")),

              ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ],
          ),
        ),

        // Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                width: 400,
                child: Image.network(
                  "https://images.unsplash.com/photo-1507842217343-583bb7270b66",
                  fit: BoxFit.cover,
                ),
              ),

              Text(
                "Welcome to My Library",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),

              Text("Find your favorite books", style: TextStyle(fontSize: 16)),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Icon(Icons.book, size: 40, color: Colors.white),
                        Text(
                          "Books",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.green,
                    child: Column(
                      children: [
                        Icon(Icons.people, size: 40, color: Colors.white),
                        Text(
                          "Students",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Text(
                "Popular Books",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset("dice-1.png", height: 100, width: 100),
                      Text("Book One"),
                    ],
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1529156069898-49953e39b3ac",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
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
            NavigationDestination(icon: Icon(Icons.book), label: "Books"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),

        // Floating Button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
