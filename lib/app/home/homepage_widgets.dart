import 'package:flutter/material.dart';
import '../../database/hive.dart';
import '../screens/incoming_outgoing_route/incoming_outgoing_page.dart';
import '../screens/my_account_route/my_account_page.dart';


class InOutButton extends StatelessWidget {
  var  data;
  InOutButton({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => IncomingOutoingPage(data: data),
          ),
        );
      },
      icon: const Icon(Icons.add_chart),
      iconSize: 40,
    );
  }
}

class MyAccountButton extends StatelessWidget {
  const MyAccountButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setData();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const MyAccountPage(),
          ),
        );
      },
      icon: const Icon(Icons.account_box),
      iconSize: 40,
    );
  }
}
