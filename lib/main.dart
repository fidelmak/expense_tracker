import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      color: Colors.green,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // final List<Transaction> transaction = [

  // ];
  // late String titleInput;
  // late String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.green,
                  child: Text('CHART!'),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ]),
      ),
    );
  }
}
