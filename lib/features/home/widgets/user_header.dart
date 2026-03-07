import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: 'Hello,',
                  size: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                ),
                CustomText(
                  text: 'Amjad Sharaf',
                  size: 30,
                  fontWeight: FontWeight.w200,
                  color: AppColors.primary,
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/logo/logo.svg',
              color: AppColors.primary,
              height: 28,
            ),
            // CustomText(
            //   text: 'Hungry Today?',
            //   size: 14,
            //   fontWeight: FontWeight.w500,
            //   color: Colors.grey.shade500,
            // ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.primary,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('assets/test/kunckles.jpg'),
          ),
        ),
      ],
    );
  }
}
