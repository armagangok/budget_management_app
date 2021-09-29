import 'package:flutter/material.dart';
import '../../../core/appbar/appbar.dart';
import '../loan_page/widgets/widgets.dart';

class LoanPage extends StatelessWidget {
  const LoanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("GİDERLER"),
      body: const LoanPageWidget(),
    );
  }
}
