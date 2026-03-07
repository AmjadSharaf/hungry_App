import 'package:flutter/material.dart';

class ProductDetView extends StatelessWidget {
  const ProductDetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: const Center(
        child: Text('Product detail content will go here'),
      ),
    );
  }
}