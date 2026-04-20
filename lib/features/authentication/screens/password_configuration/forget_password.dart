import 'package:al_in_one/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(
              height: TSizes.spacedBtwSections,
            ),

            // Text field
            TextFormField(
              decoration: InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spacedBtwSections),

            // Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
