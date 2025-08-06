import 'package:bmi_calcuator/Buttons/defultbuttons.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reusable componets'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Here is Reusable componets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            defaultButton(colorButton: Colors.blueGrey[600], text: 'Button 1'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
            defaultButton(colorButton: Colors.teal, text: 'Button 2'),
          ],
        ),
      ),
    );
  }
}
