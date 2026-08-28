import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CardItemCart extends StatelessWidget {
  const CardItemCart({
    super.key,
    required this.title,
    required this.desc,
    required this.image,
    this.min,
    this.add,
    this.remove,
    required this.number,
  });
  final String title, desc, image;
  final VoidCallback? min;
  final VoidCallback? add;
  final VoidCallback? remove;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image, width: 80),
                CustomText(text: title, fontWeight: FontWeight.bold),
                CustomText(text: desc, fontWeight: FontWeight.w400),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: add,
                    child: CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  Gap(20),
                  CustomText(text: '$number'),
                  Gap(20),
                  InkWell(
                    onTap:  min,
                    child: CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Gap(10),
              CustomButton(text: "Remove", height: 40, onTap:  remove),
            ],
          ),
        ],
      ),
    );
  }
}
