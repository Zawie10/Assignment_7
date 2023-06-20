import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cart_page.dart';
import 'package:untitled/product_item.dart';
import 'package:untitled/product_list.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: ItemList.products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            index: index,
            product: ItemList.products[index],
            onTap: () {
              if (ItemList.products[index].counter >= 5) {
                alert(
                  context,
                  title: Text('Congratulations!'),
                  content: Text('You\'ve bought 5 Product ${index}!'),
                  textOK: Text('Yes'),
                );
              } else {
                setState(() {
                  ItemList.products[index].incrementCounter();
                });
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CartPage(products: ItemList.products),
          ));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
