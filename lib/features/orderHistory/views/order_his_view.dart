import 'package:flutter/material.dart';

class OrderHisView extends StatelessWidget {
  const OrderHisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
      ),
      body: const Center(
        child: Text('Order history content will go here'),
      ),
    );
  }
}