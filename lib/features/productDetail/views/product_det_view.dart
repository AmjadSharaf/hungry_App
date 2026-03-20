import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/productDetail/widgets/soicy_slider.dart';
import 'package:hungry_app/features/productDetail/widgets/topping_card.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        onChaged: (v) => setState(() => value = v),
                        value: value,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(20),
              CustomText(text: "  Toppings  ", size: 20),
              Gap(30),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ToppingCard(
                        imageUrl: "assets/detail/sandwitch_detail.png",
                        title: "Tomato",
                        onAdd: () {},
                        color: Colors.red,
                      ),
                    );
                  }),
                ),
              ),
              Gap(20),
              CustomText(text: "  Side Options  ", size: 20),
              Gap(30),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ToppingCard(
                        imageUrl: "assets/detail/sandwitch_detail.png",
                        title: "Tomato",
                        onAdd: () {},
                        color: Colors.green,
                      ),
                    );
                  }),
                ),
              ),
              Gap(100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Total", size: 20),
                      CustomText(text: "\$18.9", size: 20),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: CustomText(text: "Add To Card", color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
