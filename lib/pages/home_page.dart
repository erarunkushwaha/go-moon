// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _pageTitle(),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "Go Moon",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 70,
      ),
    );
  }

  Widget _moonImage() {
    return Container(
      decoration: BoxDecoration(
        // color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: AssetImage('assets/images/moon.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
