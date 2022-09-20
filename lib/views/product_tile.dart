import 'package:flutter/material.dart';
import 'package:wakulima1/model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({required this.product});
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            child: Text(product.kilograms.toString()),
          ),
          title: Text(product.name),
          subtitle: Text(product.date),
        ),
      ),
    );
  }
}
