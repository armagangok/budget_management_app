import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_budget_management/Database/hive_model.dart';
import 'package:test_budget_management/database/hive.dart';

class EarnedPageWidget extends StatelessWidget {
  const EarnedPageWidget({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Hive.openBox('earned'),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return const Widgets();
          }
        } else {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final box = Hive.box("earned");
    return Scaffold(
      backgroundColor: Colors.amber[200],
      // ignore: deprecated_member_use
      body: WatchBoxBuilder(
        box: box,
        builder: (context, box) {
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              final data = box.getAt(index) as MoneyEarned;
              return loanField(data.earnedName, data.earnedAmount, index);
            },
          );
        },
      ),
    );
  }

  Widget loanField(earnedName, earnedAmount, index) {
    return ListTile(
      onLongPress: () {},
      subtitle: SizedBox(
        height: 70,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                earnedName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                earnedAmount.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              IconButton(
                onPressed: () {
                  deleteEarned(index);
                  setData();
                },
                icon: const Icon(Icons.delete),
                color: Colors.red,
              ),
            ],
          ),
          elevation: 5,
        ),
      ),
    );
  }
}
