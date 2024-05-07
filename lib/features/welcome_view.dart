import 'package:bookia_app_two/core/constants/assets/assets_images.dart';
import 'package:bookia_app_two/core/functions/routing.dart';
import 'package:bookia_app_two/core/utils/colors.dart';
import 'package:bookia_app_two/core/utils/text_styles.dart';
import 'package:bookia_app_two/core/widgets/custom_button.dart';
import 'package:bookia_app_two/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetsImages.welcome,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 200,
            left: 50,
            right: 50,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetsImages.book),
                    const Gap(8),
                    Image.asset(AssetsImages.bookia)
                  ],
                ),
                const Gap(10),
                Text('Order Your Book Now!', style: getBodyStyle(fontSize: 18))
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 50,
            right: 50,
            child: Column(
              children: [
                CustomButton(
                  onPressed: () {
                    navigateTo(context, const LoginView());
                  },
                  text: 'Login',
                ),
                const Gap(15),
                CustomButton(
                  onPressed: () {},
                  isBorder: true,
                  bgColor: AppColors.whiteColor,
                  fgColor: AppColors.blackColor,
                  text: 'Register',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
