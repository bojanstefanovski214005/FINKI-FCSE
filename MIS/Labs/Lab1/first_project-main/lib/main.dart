import 'package:flutter/material.dart';
import 'screens/clothes_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '214005',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ), // ThemeData
      home: const ProductListScreen(),
    ); // MaterialApp
  }
}
