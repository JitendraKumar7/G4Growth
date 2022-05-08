import 'package:flutter/material.dart';
import 'package:g4growth/ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G4Growth',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const IndexPage(),
    );
  }
}
