import 'package:dayone_app/pages/first_page.dart';
import 'package:dayone_app/pages/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const MyHomePage(),
      '/first': (context) => const FirstPage(),
      '/second': (context) => const SecondPage(),
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Navigation')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/first");
            },
            child: const Text('First Page'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/second");
            },
            child: const Text('Second Page'),
          ),
        ],
      )),
    );
  }
}
