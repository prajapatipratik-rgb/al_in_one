import 'package:al_in_one/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:al_in_one/features/authentication/screens/signup.widgets/signup.dart';
import 'package:al_in_one/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spacedBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //Password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          //Remember Me and Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),

              //Forget Password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPasword)),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          //Sign in Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems),

          // Create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => SignupScreen()),
                  child: Text(TTexts.createAccount))),
        ],
      ),
    ));
  }
}
