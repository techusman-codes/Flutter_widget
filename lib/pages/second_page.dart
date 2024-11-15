
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Second Page")),
      ),
      body: TextButton(
          onPressed: Navigator.of(context).pop, child: const Text("Pop")),
    );
  }
}