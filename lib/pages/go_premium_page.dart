import 'package:flutter/material.dart';

class GoPremiumPage extends StatelessWidget {
  const GoPremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Go Premium"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Welcome to Go Premium Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
