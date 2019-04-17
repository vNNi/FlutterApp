import 'package:flutter/material.dart';
import 'products.dart';
import 'dart:math';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({ this.startingProduct = 'Initial Food'});
  get startProduct => this.startingProduct;
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }
   _addProduct(String product){
    setState(() {
      _products.add(product);
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(this._addProduct)
      ),
      Products(_products),
    ]);
  }
}
