import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:test_budget_management/Database/hive_model.dart';
import 'package:test_budget_management/app/core/theme/theme.dart';
import 'app/homepage/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'database/hive.dart';
import 'provider/provider_helper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await path_provider.getApplicationDocumentsDirectory();
  Hive.initFlutter(directory.path);
  Hive.registerAdapter(MoneyLoanAdapter());
  Hive.registerAdapter(MoneyEarnedAdapter());

  final _prefs = await SharedPreferences.getInstance();
  if (_prefs.getInt("firstRun") == null) {
    getReady();
    await _prefs.setInt("firstRun", 1);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(context),
      home: ChangeNotifierProvider<ProviderHelper>(
        create: (context) => ProviderHelper(),
        child: const HomePage(),
      ),
    );
  }
}
