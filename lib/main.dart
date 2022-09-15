import 'package:flutter/material.dart';
import 'package:lab_08/screens/home.dart';
import 'package:lab_08/screens/items.dart';
import 'package:lab_08/screens/shops.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
