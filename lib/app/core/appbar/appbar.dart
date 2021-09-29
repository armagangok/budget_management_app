import 'package:flutter/material.dart';

PreferredSizeWidget appBar(String? string) {
  return AppBar(
    backgroundColor: Colors.orange[900],
    title: Text("$string"),
  );
}
