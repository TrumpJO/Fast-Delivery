// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab_08/screens/home.dart';
import 'package:lab_08/screens/items.dart';
import 'package:lab_08/screens/resturants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: AppBarTheme(color: Colors.red),
    ),
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
