import 'package:flutter/material.dart';
import 'package:hungry_app/features/orderHistory/widgets/cart_item_order.dart';

class OrderHisView extends StatelessWidget {
  const OrderHisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CartItemOrder(
            image: "assets/test/test.png",
            count: 3,
            price: 20,
            title: "wdwb",
          );
        },
      ),
    );
  }
}
