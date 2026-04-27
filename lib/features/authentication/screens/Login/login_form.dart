import 'package:al_in_one/features/authentication/controllers.onboarding/login/login_controller.dart';
import 'package:al_in_one/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:al_in_one/features/authentication/screens/signup.widgets/signup.dart';
import 'package:al_in_one/navigation_menu.dart';
import 'package:al_in_one/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: TSizes.spacedBtwSections),
          child: Column(
            children: [
              //Email
              TextFormField(
                controller: controller.email,
                validator: (value) => TValidator.validateEmail(value),
                decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TTexts.email),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              /// Password
              Obx(
                () => TextFormField(
                  validator: (value) => TValidator.validatePassword(value),
                  controller: controller.password,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    labelText: TTexts.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    ),
                  ),
                ), // TextFormField
              ), // Obx
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
                      Obx(
                        () => Checkbox(
                            value: controller.rememberMe.value,
                            onChanged: (value) => controller.rememberMe.value =
                                !controller.rememberMe.value),
                      ),
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
                      onPressed: () => controller.emailAndPasswordSignIn(),
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
