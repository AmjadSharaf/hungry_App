import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

import '../../../shared/custom_text.dart';
import '../../../shared/custom_txtfield.dart';
import '../widgets/customAuthBotton.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmpasswordController = TextEditingController();
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
                  text: "welocom ",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  size: 20,
                ),

                Gap(60),
                CustomTxtfield(
                  controller: nameController,
                  hint: "Name",
                  isPassword: false,
                ),
                Gap(20),
                CustomTxtfield(
                  controller: emailController,
                  hint: "Email",
                  isPassword: false,
                ),
                Gap(20),
                CustomTxtfield(
                  controller: passwordController,
                  hint: "Password",
                  isPassword: true,
                ),
                Gap(20),
                CustomTxtfield(
                  controller: confirmpasswordController,
                  hint: "confirm password ",
                  isPassword: true,
                ),
                Gap(30),
                Customauthbotton(
                  text: "Sign Up",
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
