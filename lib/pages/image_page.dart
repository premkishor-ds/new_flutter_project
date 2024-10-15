import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Image Page!'),
      ),
    );
  }
}
