import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_budget_management/provider/provider_helper.dart';
import 'homepage_widgets.dart';
import '../core/appbar/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
        final data = Provider.of<ProviderHelper>(context);

    return Scaffold(
      appBar: appBar("Bütçe Yönet"),
      bottomNavigationBar: bottomNavigation(context, data),
    );
  }

  Widget bottomNavigation(BuildContext context, data) {
    return BottomAppBar(
      color: Colors.orange[900],
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myAccountButton(context),
            const VerticalDivider(color: Colors.black),
            inOutButton(context,data),
          ],
        ),
      ),
    );
  }
}
