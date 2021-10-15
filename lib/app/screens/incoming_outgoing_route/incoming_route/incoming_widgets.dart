import 'package:flutter/material.dart';
import 'package:test_budget_management/Database/hive.dart';
import '../../../components/text_widget/text_widget.dart';

Widget earnedAmountWidget(earnedAmount) {
  return TextFormField(
    controller: earnedAmount,
    decoration: InputDecoration(
      hintText: 'Gelir miktarını yaz..',
      labelText: 'Son gelirin miktarını ekle.',
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      border: const OutlineInputBorder(),
      fillColor: Colors.purple[50],
      filled: true,
    ),
    keyboardType: TextInputType.number,
  );
}

Widget earnedSourceWidget(earnedName) {
  return TextFormField(
    controller: earnedName,
    decoration: InputDecoration(
      hintText: 'Gelir kaynağını yaz..',
      labelText: 'Son gelir kaynağının adını ekle.',
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      border: const OutlineInputBorder(),
      fillColor: Colors.purple[50],
      filled: true,
    ),
    keyboardType: TextInputType.text,
  );
}

Widget saveEarnedButton(earnedName, earnedAmount) {
  return ButtonTheme(
    child: ElevatedButton(
      onPressed: () {
        saveEarned(earnedName, earnedAmount);
      },
      child: text("KAYDET"),
    ),
  );
}
