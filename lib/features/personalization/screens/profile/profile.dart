import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/images/t_circular_Image.dart';
import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/features/personalization/screens/profile/profile_menu.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// -- Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(
                  onPressed: () {}, title: 'Name', value: 'Pratik Prajapati'),
              TProfileMenu(
                  title: 'Username', value: 'BKTEVIL', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

// Heading Personal Info
              const TSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  title: 'User ID',
                  value: '45689',
                  icon: Iconsax.copy_copy,
                  onPressed: () {}),
              TProfileMenu(
                  title: 'E-mail',
                  value: 'pratikprajapati9841@gmail.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: '977+ 9813982999',
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date of Birth',
                  value: '05 Sep, 2006',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Delete Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
