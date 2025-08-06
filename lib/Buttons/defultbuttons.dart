import 'package:flutter/material.dart';

Widget defaultButton({
  bool isUpperCase = true,
  required Color? colorButton,
  required String? text,
}) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: colorButton),
            child: MaterialButton(
              child: Text(
                
                '${text}'),
              onPressed: () {},
            ),
          ),
        ),
      ),
    ],
  );
}
