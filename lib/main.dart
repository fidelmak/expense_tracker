import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter App'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        Container(
          width: double.infinity,
          child: Card(
            color: Colors.blue,
            child: Text('CHART!'),
            elevation: 5,
          ),
        ),
        Card(
          child: Text('LIST OF TX'),
        ),
      ]),
    );
  }
}