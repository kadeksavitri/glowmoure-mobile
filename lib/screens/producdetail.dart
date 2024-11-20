import 'package:flutter/material.dart';
import 'package:glowmoure_mobile/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductDetail product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${product.name}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text("Price: ${product.price}"),
            const SizedBox(height: 16),
            Text("Description: ${product.description}"),
            const SizedBox(height: 16),
            Text("Quantity: ${product.category}"),
            const SizedBox(height: 16),
            Text("Quantity: ${product.stock}"),
          ],
        ),
      ),
    );
  }
}