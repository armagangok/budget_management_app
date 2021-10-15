import 'package:flutter/material.dart';

ThemeData theme(context) {
  return ThemeData(
    primaryColor: Colors.orange[900],
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
  );
}


