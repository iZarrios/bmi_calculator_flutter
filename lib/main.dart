import 'package:flutter/material.dart';
import 'package:lutter_test/bmi_calculator.dart';
import 'package:lutter_test/bmi_result_screen.dart';
import 'package:lutter_test/messenger_screen.dart';
import 'package:lutter_test/users_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
