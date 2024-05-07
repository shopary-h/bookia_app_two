import 'package:bookia_app_two/core/constants/assets/assets_icons.dart';
import 'package:bookia_app_two/core/functions/routing.dart';
import 'package:bookia_app_two/core/utils/colors.dart';
import 'package:bookia_app_two/core/utils/text_styles.dart';
import 'package:bookia_app_two/core/widgets/custom_button.dart';
import 'package:bookia_app_two/features/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Welcome back!Glad to see you, Again!',
                style: getBodyStyle(fontSize: 30)),
            const Gap(30),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            const Gap(15),
            TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(obscureText
                        ? Icons.visibility_off
                        : Icons.remove_red_eye)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?',
                        style: getBodyStyle(color: AppColors.primaryColor))),
              ],
            ),
            const Gap(30),
            CustomButton(
              onPressed: () {
                navigateAndRemoveUntil(context, const WelcomeView());
              },
              text: 'Login',
            ),
            const Gap(35),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Gap(10),
                Text('Or Login with'),
                Gap(10),
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(AssetsIcons.facebook),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(AssetsIcons.google),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(AssetsIcons.apple),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account?',
                style:
                    getTitleStyle(fontSize: 14, color: AppColors.blackColor)),
            TextButton(
                onPressed: () {},
                child: Text('Register Now',
                    style: getTitleStyle(
                        fontSize: 14, color: AppColors.primaryColor)))
          ],
        ),
      ),
    );
  }
}
