import 'package:flutter/material.dart';
import 'dart:math' show Random;

class ProductControl extends StatelessWidget{
  final Function addProduct;
  ProductControl(this.addProduct);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          onPressed: () {
            addProduct('Food Tester ${Random().nextInt(100).toString()}');
          },
          child: Text("Add product"),
        );
  }
}