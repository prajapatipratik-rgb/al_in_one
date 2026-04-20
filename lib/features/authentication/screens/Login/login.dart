import 'package:al_in_one/common/styles/spacing_styles.dart';
import 'package:al_in_one/common/widgets_login_signup/form_divider.dart';
import 'package:al_in_one/common/widgets_login_signup/social_buttons.dart';
import 'package:al_in_one/features/authentication/screens/Login/login_form.dart';
import 'package:al_in_one/features/authentication/screens/Login/login_header.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title and subtitle
              const TLoginHeader(),
              //FORM
              const TLoginForm(),

              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Footer
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
