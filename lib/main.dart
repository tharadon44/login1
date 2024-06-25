import 'package:flutter/material.dart';
import 'package:login/firstpage/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 52, 180, 238)),
        useMaterial3: true,
      ),
      home: const SecondPage(),
    );
  }
}
