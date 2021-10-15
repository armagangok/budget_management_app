import 'package:flutter/material.dart';
import 'incoming_widgets.dart';

Widget earnedMoneyWidgetField(
  TextEditingController earnedAmount,
  TextEditingController earnedName,
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
            earnedAmountWidget(earnedAmount),
            earnedSourceWidget(earnedName),
            saveEarnedButton(earnedName, earnedAmount),
          ],
        ),
      ),
    ),
  );
}
