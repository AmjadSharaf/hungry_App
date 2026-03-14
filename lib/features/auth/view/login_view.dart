import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_txtfield.dart';

import '../widgets/customAuthBotton.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset("assets/logo/logo.svg"),
                Gap(10),

                CustomText(
                  text: "Wlcome Back...",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  size: 20,
                ),

                Gap(60),
                CustomTxtfield(
                  hint: "Email ",
                  isPassword: false,
                  controller: emailController,
                ),
                Gap(20),
                CustomTxtfield(
                  hint: "Password",
                  isPassword: true,
                  controller: passwordController,
                ),
                Gap(30),
                Customauthbotton(
                  text: "Login",
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
