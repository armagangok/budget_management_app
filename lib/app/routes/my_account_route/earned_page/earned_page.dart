import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import '../../../core/appbar/appbar.dart';

class EarnedPage extends StatelessWidget {
  const EarnedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("GELİRLERİM"),
      body: const EarnedPageWidget(),
    );
  }
}
