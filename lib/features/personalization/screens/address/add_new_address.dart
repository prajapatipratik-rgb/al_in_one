import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppBar(showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile_copy),
                        labelText: 'Phone Number')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.building_3),
                              labelText: 'Street')),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.code_1_copy),
                              labelText: 'Postal Code')),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.buildings_copy),
                              labelText: 'City')),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.activity_copy),
                              labelText: 'State')),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global_copy),
                      labelText: 'Country'),
                ),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('Save')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
