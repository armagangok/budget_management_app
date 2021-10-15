import 'package:flutter/material.dart';

Widget text(string) {
  return Text(
    "$string",
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

