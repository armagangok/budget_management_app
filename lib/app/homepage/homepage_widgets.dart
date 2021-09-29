import 'package:flutter/material.dart';
import '../../database/hive.dart';
import '../routes/incoming_outgoing_route/incoming_outgoing_route.dart';
import '../routes/my_account_route/my_account.dart';

Widget inOutButton(context,  data) {
  return IconButton(
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) =>
               IncomingOutoingRoute(data: data),
        ),
      );
    },
    icon: const Icon(Icons.add_chart),
    iconSize: 40,
  );
}

Widget myAccountButton(context) {
  return IconButton(
    onPressed: () {
      setData();
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => const MyAccount()),
      );
    },
    icon: const Icon(Icons.account_box),
    iconSize: 40,
  );
}
