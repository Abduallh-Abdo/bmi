import 'package:bmi/screens/home.dart';
import 'package:bmi/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI());
}
class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}