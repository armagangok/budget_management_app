import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_budget_management/database/hive.dart';
import '../../../core/appbar/appbar.dart';
import '../../../core/text_widget/text_widget.dart';

class ResultPage extends StatelessWidget {
  final _data = returnData();
  ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("MALİ DURUM"),
      body: FutureBuilder(
        future: _data,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return body(snapshot);
            }
          } else {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }

  Widget body(snapshot) {
    return Card(
      color: Colors.orange[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              text("Gelir Toplamı: "),
              text(snapshot.data[0].join(',') + " TL"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              text("Gider Toplamı: "),
              text(snapshot.data[1].join(',') + " TL"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              text("Mali Durum : "),
              text(snapshot.data[2].join(',') + " TL"),
            ],
          ),
        ],
      ),
    );
  }
}
