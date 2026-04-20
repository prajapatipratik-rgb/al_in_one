import 'package:al_in_one/features/authentication/screens/signup.widgets/terms_conditions_checkbox.dart';
import 'package:al_in_one/features/authentication/screens/signup.widgets/verify_email.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TsignupForm extends StatelessWidget {
  const TsignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstname,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
            ))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        ///Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        ///Email
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        ///Phone Number
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        ///Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///Terms and conditions Checkbox
        TTermsAndConditionCheckbox(),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///signup Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text(TTexts.createAccount)),
        )
      ],
    ));
  }
}
