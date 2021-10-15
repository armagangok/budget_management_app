import 'package:flutter/material.dart';
import 'package:test_budget_management/Database/hive.dart';
import '../../../components/text_widget/text_widget.dart';

Widget outgoingSource(loanAmount) {
  return TextFormField(
    controller: loanAmount,
    decoration: InputDecoration(
      hintText: 'Gider miktarı ..',
      labelText: 'Son giderin miktarını ekle.',
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

Widget outgoingAmount(loanName) {
  return TextFormField(
    controller: loanName,
    decoration: InputDecoration(
      hintText: 'Gider kaynağı ..',
      labelText: 'Son gider kaynağının adını ekle.',
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

Widget saveLoanButton(loanAmount, loanName) {
  return ButtonTheme(
    child: ElevatedButton(
      onPressed: () async {
        saveLoan(loanName, loanAmount);
      },
      child: text("KAYDET"),
    ),
  );
}
