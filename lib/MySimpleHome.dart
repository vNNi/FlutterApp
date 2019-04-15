import 'package:flutter/material.dart';

class MySimpleHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MySimpleHome> {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                _products.add("Food Tester 2");
              },
              child: Text("Add product"),
            ),
          ),
          Column(
            children: _products
                .map((el) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/paradise.jpeg'),
                          Text(el.toString())
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
