import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result.dart';

class BMIScreen extends StatefulWidget {
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double height = 160; // الطول الافتراضي
  int weight = 60; // الوزن الافتراضي
  int age = 25; // العمر الافتراضي
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 48, 68),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 48, 68),
        title: Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        children: [
          // اختيار الجنس
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // اختيار ذكر
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => isMale = true),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale
                              ? Colors.blueAccent
                              : const Color.fromARGB(255, 2, 36, 51),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 100, color: Colors.white),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // اختيار أنثى
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => isMale = false),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isMale
                              ? Colors.pinkAccent
                              : const Color.fromARGB(255, 2, 36, 51),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 100, color: Colors.white),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // شريط الطول
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 2, 36, 51),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 20, color: Colors.white54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.toInt()}',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(' cm', style: TextStyle(color: Colors.white54)),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 100,
                      max: 220,
                      onChanged: (value) {
                        setState(() => height = value);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // الوزن والعمر
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // الوزن
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 2, 36, 51),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                onPressed: () => setState(() => weight--),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                mini: true,
                                onPressed: () => setState(() => weight++),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  // العمر
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 2, 36, 51),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                onPressed: () => setState(() => age--),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                mini: true,
                                onPressed: () => setState(() => age++),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // زر الحساب
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.amber,
            child: MaterialButton(
              onPressed: () {
                final result = weight / pow(height / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResult(
                      resultbmi: result.round(),
                      agebmi: age,
                      isMalebmi: isMale,
                    ),
                  ),
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
