
import 'package:flutter/material.dart';
import 'package:untitled/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  final int index;
  const ProductItem({
    required this.product,
    required this.onTap, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Product $index'),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      trailing: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${product.counter}'),
            ElevatedButton(
              onPressed: onTap,
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}