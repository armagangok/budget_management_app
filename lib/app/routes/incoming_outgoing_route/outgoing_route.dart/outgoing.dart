import 'package:flutter/material.dart';
import 'outgoing_widgets.dart';

Widget loanMoneyWidgetField(
  TextEditingController loanAmount,
  TextEditingController loanName,
  context,
) {
  return SizedBox(
    height: 250,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.orange[900],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            outgoingSource(loanName),
            outgoingAmount(loanAmount),
            saveLoanButton(loanName, loanAmount),
          ],
        ),
      ),
    ),
  );
}
