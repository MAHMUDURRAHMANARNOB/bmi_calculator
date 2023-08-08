// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'screens/inputPage.dart';

void main() => runApp(HealthBmiCalculator());

class HealthBmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF041F37),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF041F37),
        ),
      ),
      home: InputPage(),
    );
  }
}
