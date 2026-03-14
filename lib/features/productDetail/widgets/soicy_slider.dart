import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

import '../../../shared/custom_text.dart';

class SoicySlider extends StatelessWidget {
  const SoicySlider({super.key, required this.value, required this.onChaged});
  final double value;
  final Function(double) onChaged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: "0"),
        Slider(
          min: 0,
          max: 3,
          activeColor: AppColors.primary,
          inactiveColor: Colors.grey.shade300,
          value: value,
          onChanged: onChaged,
        ),

        CustomText(text: "3"),
      ],
    );
  }
}
