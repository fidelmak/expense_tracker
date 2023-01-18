import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\₦: ${transaction[index].amount.toStringAsFixed(2)}'
                        .toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(transaction[index].title,
                          // style: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 16,
                          // ),
                          style: Theme.of(context).textTheme.titleSmall),
                      Text(
                          DateFormat('yyyy-MM-dd')
                              .format(transaction[index].date),
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: transaction.length,
        // children: transaction.map((tx) {}).toList(),
      ),
    );
  }
}
