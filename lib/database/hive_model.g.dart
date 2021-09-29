// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoneyLoanAdapter extends TypeAdapter<MoneyLoan> {
  @override
  final int typeId = 1;

  @override
  MoneyLoan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MoneyLoan(
      fields[0] as String,
      fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, MoneyLoan obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.loanName)
      ..writeByte(1)
      ..write(obj.loanAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoneyLoanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MoneyEarnedAdapter extends TypeAdapter<MoneyEarned> {
  @override
  final int typeId = 2;

  @override
  MoneyEarned read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MoneyEarned(
      fields[0] as String?,
      fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, MoneyEarned obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.earnedName)
      ..writeByte(1)
      ..write(obj.earnedAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoneyEarnedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
