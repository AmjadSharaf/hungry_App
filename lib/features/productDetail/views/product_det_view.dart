import 'package:flutter/material.dart';
import 'package:hungry_app/features/productDetail/widgets/soicy_slider.dart';
import 'package:hungry_app/shared/custom_text.dart';

class ProductDetView extends StatefulWidget {
  const ProductDetView({super.key});

  @override
  State<ProductDetView> createState() => _ProductDetViewState();
}

class _ProductDetViewState extends State<ProductDetView> {
  double value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/detail/sandwitch_detail.png",
                  height: 250,
                  width: 200,
                ),
                Spacer(),
                // Gap(MediaQuery.of(context).size.width / 100),
                Column(
                  children: [
                    CustomText(
                      text:
                          "Custom your burger \n to your tastes. \n Ultimate Experince",
                    ),
                    SoicySlider(
                      onChaged: (v) {
                        setState(() {
                          value = v;
                        });
                      },
                      value: value,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
