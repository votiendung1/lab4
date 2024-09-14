import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  int ballNumber = 1;

  void shakeBall() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1; // Random từ 1 đến 4
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 64, 64),
      appBar: AppBar(
        title: const Text('Magic 8 Ball'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: shakeBall,
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
