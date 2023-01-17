import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_japanese/screens/home_page.dart';

void main() {
  runApp(const easyLearnJapanese());
}

class easyLearnJapanese extends StatelessWidget {
  const easyLearnJapanese({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
