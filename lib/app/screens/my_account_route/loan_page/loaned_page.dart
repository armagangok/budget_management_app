import 'package:flutter/material.dart';
import '../../../components/appbar/appbar.dart';
import '../loan_page/widgets/widgets.dart';

class LoanPage extends StatelessWidget {
  const LoanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(text: "GİDERLER"),
      body:  LoanPageWidget(),
    );
  }
}
