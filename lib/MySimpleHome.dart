import 'package:flutter/material.dart';
import 'product_manager.dart';

class MySimpleHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MySimpleHomeState();
  }
}

class _MySimpleHomeState extends State<MySimpleHome> {
  Color _theme;
  initState() {
    _theme = ThemeData.dark().scaffoldBackgroundColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Food"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          ProductManager(startingProduct: 'Initial Food'),
        ],
      ),
    );
  }
}
