import 'package:flutter/material.dart';
import 'package:test_budget_management/app/screens/my_account_route/loan_page/loaned_page.dart';
import 'Earned_Page/earned_page.dart';
import 'result_page/result_page.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return PageView(
      children:  [
        const EarnedPage(),
        const LoanPage(),
        ResultPage(),
      ],
    );
  }
}
