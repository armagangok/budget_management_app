import 'package:flutter/material.dart';
import 'provider/provider_helper.dart';
import 'package:provider/provider.dart';
import './app/home/homepage.dart';
import './theme/theme.dart';
import './init_app.dart';


void main() async {
  await initApp();
  runApp(
    const MyApp(),
  );
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
