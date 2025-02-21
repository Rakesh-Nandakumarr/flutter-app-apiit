import 'package:flutter/material.dart';
import 'package:flutter_challenge/product_screen.dart';
import 'package:flutter_challenge/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Product(),
      routes: {
        '/profile': (context) => const ProfileScreen(), // Add the route for ProfileScreen
        '/product': (context) => const Product(),
      },
    );
  }
}