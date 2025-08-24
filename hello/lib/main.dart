import 'package:flutter/material.dart';
import 'package:hello/main_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: const Text(
            'Hello Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const MainContent(),
      ),
    );
  }
}
