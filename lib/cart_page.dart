import 'package:flutter/material.dart';
import 'package:untitled/product.dart';

class CartPage extends StatelessWidget {
  final List<Product> products;

  const CartPage({required this.products});

  @override
  Widget build(BuildContext context) {
    int totalProducts = 0;
    for (var product in products) {
      totalProducts += product.counter;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: Center(
        child: Text('Total Products: $totalProducts'),
      ),
    );
  }
}
