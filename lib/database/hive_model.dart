import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 1)
class MoneyLoan {
  @HiveField(0)
  late final String loanName;
  @HiveField(1)
  late final double loanAmount;
  MoneyLoan(
    this.loanName,
    this.loanAmount,
  );
}

@HiveType(typeId: 2)
class MoneyEarned {
  @HiveField(0)
  late final String? earnedName;

  @HiveField(1)
  late final double? earnedAmount;

  MoneyEarned(
    this.earnedName,
    this.earnedAmount,
  );
}
