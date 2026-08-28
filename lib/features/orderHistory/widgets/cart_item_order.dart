import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CartItemOrder extends StatelessWidget {
  const CartItemOrder({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
    this.ontap,
  });

  final String image, title;
  final double price, count;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(image, width: 80),
                ),
                Gap(50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: title),
                    CustomText(text: "$count \$"),
                    CustomText(text: "$price"),
                  ],
                ),
              ],
            ),
            CustomButton(
              onTap: ontap,
              text: "Order Again",
              color: Colors.grey[400],
              radius: 20,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
