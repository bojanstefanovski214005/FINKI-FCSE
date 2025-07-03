import 'package:first_project/model/product.dart';
import 'package:first_project/screens/clothes_details_screen.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('214005'),
        ), // AppBar
        body: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              Product product = productList[index];
              return Card(
                child: ListTile(
                  title: Text(product.title),
                  subtitle: Text(product.price),
                  leading: Image.network(product.imageUrl),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsScreen(product)));
                  },
                ),
              );
            })); // ListView.builder // Scaffold
  }
}
