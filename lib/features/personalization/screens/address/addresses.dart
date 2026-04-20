import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/features/personalization/screens/address/add_new_address.dart';
import 'package:al_in_one/features/personalization/screens/address/single_address.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: TColors.primaryColor,
        child: Icon(
          Iconsax.add_copy,
          color: TColors.white,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: false),
              TSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
