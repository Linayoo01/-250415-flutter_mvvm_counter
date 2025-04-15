import 'package:flutter/material.dart';
import 'view/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Counter App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const CounterScreen(),
    );
  }
}
