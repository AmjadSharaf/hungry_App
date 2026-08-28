import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CheckoutDetels extends StatelessWidget {
  const CheckoutDetels({
    super.key,
    required this.order,
    required this.taxes,
    required this.fess,
    required this.total,
  });
  final String order, taxes, fess, total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkoutWidget("   Order", order, false, false, false),
        Gap(15),
        checkoutWidget("   Taxes", taxes, false, false, false),
        Gap(15),
        checkoutWidget("   Delivery fees", fess, false, false, false),
        Gap(15),
        Divider(),
        Gap(15),
        checkoutWidget("   Total", total, true, true, false),
        Gap(15),
        checkoutWidget(
          "   Estimated delivery time : ",
          "15-20 mins",
          true,
          true,
          true,
        ),
      ],
    );
  }
}

Widget checkoutWidget(
  String title,
  dynamic price,
  bool isbold,
  bool iscolor,
  bool issmall,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: title,
        size: issmall ? 12 : 15,
        fontWeight: isbold ? FontWeight.bold : FontWeight.w400,
        color: Colors.grey[600],
      ),
      CustomText(
        text: ' $price ',
        size: issmall ? 12 : 15,
        fontWeight: isbold ? FontWeight.bold : FontWeight.w400,
        color: iscolor ? Colors.black : Colors.grey[600],
      ),
    ],
  );
}
