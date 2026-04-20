import 'package:al_in_one/common/styles/widgets/login_signup/success_screen/success_screen.dart';
import 'package:al_in_one/features/authentication/screens/Login/login.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
// padding to give default equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spacedBtwSections),

              //Title and Subtitle
              Text(TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('pratik@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SucessScreen(
                            image: TImages.staticSuccessIllustration,
                            title: TTexts.yourAccountCreatedTitle,
                            subtitle: TTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwItems * 0.9),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
