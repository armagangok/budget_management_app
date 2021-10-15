import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_budget_management/provider/provider_helper.dart';
import 'homepage_widgets.dart';
import '../components/appbar/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ProviderHelper>(context);

    return Scaffold(
      appBar: const AppBarWidget(
        text: '',
      ),
      bottomNavigationBar: bottomNavigationWidget(context, data),
    );
  }

  Widget bottomNavigationWidget(BuildContext context, data) {
    return BottomAppBar(
      color: Colors.orange[900],
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyAccountButton(),
            const VerticalDivider(color: Colors.black),
            InOutButton(data: data),
          ],
        ),
      ),
    );
  }
}
