import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Welcome to My Profile Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
