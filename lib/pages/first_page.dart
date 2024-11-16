import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final name;
  const FirstPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Hello $name")),
      ),
      body: TextButton(
          onPressed: Navigator.of(context).pop, child: const Text("Pop")),
    );
  }
}
