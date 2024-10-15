import 'package:flutter/material.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Course"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Welcome to My Course Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
