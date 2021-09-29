import 'package:hive/hive.dart';
import 'hive_model.dart';

Future<void> saveLoan(loanName, loanAmount) async {
  await Hive.openBox("loan");
  MoneyLoan loan = MoneyLoan(loanName.text, double.parse(loanAmount.text));
  final box = Hive.box("loan");
  await box.add(loan);
}

// ########################################################################
Future<void> saveEarned(earnedName, earnedAmount) async {
  await Hive.openBox("earned");
  MoneyEarned earned =
      MoneyEarned(earnedName.text, double.parse(earnedAmount.text));
  final box = Hive.box("earned");
  await box.add(earned);
}

// ########################################################################
Future<void> deleteLoan(index) async {
  await Hive.openBox("loan");
  final box = Hive.box("loan");
  await box.deleteAt(index);
}

// ########################################################################
Future<void> deleteEarned(index) async {
  await Hive.openBox("earned");
  final box = Hive.box("earned");
  await box.deleteAt(index);
}

// ########################################################################
Future<void> getReady() async {
  await Hive.openBox("totalEarned");
  await Hive.openBox("totalLoan");
  await Hive.openBox("result");

  final totalEarnedBox = Hive.box("totalEarned");
  final totalLoanBox = Hive.box("totalLoan");
  final resultBox = Hive.box("result");

  await totalEarnedBox.add(0);
  await totalLoanBox.add(0);
  await resultBox.add(0);
}

// ########################################################################

Future<dynamic> returnData() async {
  await Hive.openBox("totalEarned");
  await Hive.openBox("totalLoan");
  await Hive.openBox("result");

  final totalEarnedBox = Hive.box("totalEarned");
  final totalLoanBox = Hive.box("totalLoan");
  final resultBox = Hive.box("result");

  return [
    totalEarnedBox.values,
    totalLoanBox.values,
    resultBox.values,
  ];
}

// ########################################################################

Future<void> setData() async {
  await Hive.openBox("totalLoan");
  await Hive.openBox("totalEarned");
  await Hive.openBox("result");

  final totalLoanBox = Hive.box("totalLoan");
  final totalEarnedBox = Hive.box("totalEarned");
  final resultBox = Hive.box("result");

  await totalEarnedBox.clear();
  await totalLoanBox.clear();
  await resultBox.clear();

  await Hive.openBox("earned");
  await Hive.openBox("loan");

  final earnedBox = Hive.box("earned");
  final loanBox = Hive.box("loan");
  final earnedData = earnedBox.values;
  final loanData = loanBox.values;

  double totalLoan = 0;
  double totalEarned = 0;
  double result = 0;

  for (var item in earnedData) {
    totalEarned = totalEarned + item.earnedAmount;
  }

  for (var item in loanData) {
    totalLoan = totalLoan + item.loanAmount;
  }

  result = totalEarned - totalLoan;

  await totalLoanBox.add(totalLoan);
  await totalEarnedBox.add(totalEarned);
  await resultBox.add(result);
}
