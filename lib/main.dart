import 'Bmi_Screens/BMI_buttons.dart';
import 'Bmi_Screens/bmi.dart';
import 'package:flutter/material.dart';

import 'Bmi_Screens/bmi_result.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}
