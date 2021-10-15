import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import '../../../components/appbar/appbar.dart';

class EarnedPage extends StatelessWidget {
  const EarnedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(text: "GELİRLERİM"),
      body: EarnedPageWidget(),
    );
  }
}
