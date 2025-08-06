import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMalebmi;
  // final bool isFamalebmi;
  final int resultbmi;
  final int agebmi;
  const BmiResult({
    required this.isMalebmi,
    // required this.isFamalebmi,
    required this.resultbmi,
    required this.agebmi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender :${isMalebmi ? 'Male' : 'Famale'}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              'Age : $agebmi',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              'Result : $resultbmi',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
