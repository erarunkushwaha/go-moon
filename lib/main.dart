// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 0.1)),
      home: HomePage(),
    );
  }
}
