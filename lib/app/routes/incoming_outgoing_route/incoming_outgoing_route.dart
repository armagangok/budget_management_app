import 'package:flutter/material.dart';
import 'incoming_route/incoming.dart';
import 'outgoing_route.dart/outgoing.dart';
import '../../core/appbar/appbar.dart';

class IncomingOutoingRoute extends StatelessWidget {
  final dynamic data;
  const IncomingOutoingRoute({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: appBar("Gelir Gider Ekle"),
      body: body(context, data.placeControllerIn, data.placeControllerOut,
          data.prizeControllerIn, data.prizeControllerOut),
    );
  }

  Widget body(context, prizeControllerIn, placeControllerIn, prizeControllerOut,
      placeControllerOut) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: earnedMoneyWidgetField(
              prizeControllerIn,
              placeControllerIn,
              context,
            ),
          ),
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: loanMoneyWidgetField(
              prizeControllerOut,
              placeControllerOut,
              context,
            ),
          ),
        ],
      ),
    );
  }
}
