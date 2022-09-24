// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceWidth, _deviceHeight;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          // color: Colors.amberAccent,
          child: _moonStationDropDownWidget(),
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

  Widget _moonStationDropDownWidget() {
    List<DropdownMenuItem<String>> _items =
        ["sector 32", "sector 7", "sector 24"].map(
      (e) {
        return DropdownMenuItem(child: Text(e), value: e);
      },
    ).toList();
    return Container(
      child: DropdownButton(onChanged: (_) {}, items: _items),
    );
  }
}
