import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("First Page")),
      ),
      body: TextButton(
          onPressed: Navigator.of(context).pop, child: const Text("Pop")),
    );
  }
}
