import 'package:flutter/material.dart';
import 'package:first_project/model/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.price,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
              ), // Text
            ), // Padding
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14.0),
              ), // Text
            ), // Padding
          ],
        ),
      ),
    );
  }
}
