import 'package:flutter/material.dart';
import 'package:hungry_app/features/cart/widgets/card_item.dart';
import 'package:hungry_app/features/checkout/views/checkout_view.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final int itemCount = 20;
  late final List<int> quantetey;

  @override
  void initState() {
    quantetey = List.generate(itemCount, (_) => 1);
    super.initState();
  }

  void anAdd(int index) {
    setState(() {
      quantetey[index]++;
    });
  }

  void onmin(int index) {
    setState(() {
      quantetey[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 20),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return CardItemCart(
              title: "jfjbwfbfw",
              desc: "desc",
              image: "assets/test/test.png",
              number: quantetey[index],

              add: () => anAdd(index),
              min: () => onmin(index),
            );
          },
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.95))],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Total", size: 20),
                CustomText(text: "\$18.9", size: 20),
              ],
            ),

            CustomButton(
              text: "Checkout",
              radius: 18,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
