import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class Customauthbotton extends StatelessWidget {
  const Customauthbotton({super.key, this.ontap, required this.text});
  final Function()? ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,

      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: CustomText(
            text: text,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            size: 25,
          ),
        ),
      ),
    );
  }
}
