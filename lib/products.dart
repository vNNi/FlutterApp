import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((el) => Card(
                margin: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/paradise.jpeg'),
                    Text(el.toString())
                  ],
                ),
              ))
          .toList(),
    );
  }
}
