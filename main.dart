import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'Digital Id Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Mahin',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Batch : 61st, Dept of CSE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey, thickness: 1),
              const ListTile(
                leading: Icon(Icons.person, color: Colors.teal),
                title: Text('ID : 0182310012101071'),
              ),
              const ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text('Email : mahinboss@gmail.com'),
              ),
              const ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text('Phone : +880 1612345678'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
