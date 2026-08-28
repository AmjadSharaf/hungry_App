import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/features/checkout/widgets/checkout_detels.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Order summary",
              fontWeight: FontWeight.bold,
              size: 22,
            ),

            CheckoutDetels(order: "18", taxes: "20", fess: "11", total: "30"),
            Gap(80),
            CustomText(
              text: "Pyment methods",
              fontWeight: FontWeight.bold,
              size: 22,
            ),
            Gap(20),
            ListTile(
              tileColor: Color(0xff3c2f2f),
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              title: CustomText(text: "Cash on Delivery", color: Colors.white),
              leading: Image.asset("assets/icon/cash.png", width: 50),
              trailing: Radio<String>(
                value: "cash ",
                groupValue: "cash",
                onChanged: (v) {},
                // focusColor: Colors.white,
                activeColor: Colors.white,
              ),
            ),
            Gap(20),
            ListTile(
              tileColor: Colors.green[300],
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              title: CustomText(text: "Debit card", color: Colors.white),
              subtitle: CustomText(text: "**** **** 2345", color: Colors.white),
              leading: Image.asset("assets/icon/sham.png", width: 50),
              trailing: Radio<String>(
                value: "sham ",
                groupValue: "sham",
                onChanged: (v) {},
                // focusColor: Colors.white,
                activeColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
