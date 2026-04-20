import 'package:al_in_one/common/widgets_login_signup/form_divider.dart';
import 'package:al_in_one/common/widgets_login_signup/social_buttons.dart';
import 'package:al_in_one/features/authentication/screens/signup.widgets/signup_form.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Form
              TsignupForm(),
              const SizedBox(height: TSizes.defaultSpace),
              //Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Social Buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
