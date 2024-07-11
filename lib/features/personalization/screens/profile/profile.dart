import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/appbar/appbar.dart';
import 'package:flutterlkm/common/widgets/images/circular_image.dart';
import 'package:flutterlkm/common/widgets/texts/section_heading.dart';
import 'package:flutterlkm/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

      // -- Body --
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Profile Picture ---
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.userImage, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Ubah gambar profile', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),

              /// --- Details ---
              const SizedBox(height: TSizes.spaceAntaraItem / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceAntaraItem),
              const TSectionHeading(title: 'Informasi Profile', showActionButton: false),
              const SizedBox(height: TSizes.spaceAntaraItem),

              TProfileMenu(title: 'Name', value: 'M. Budi Triono', onPressed: () {}),
              TProfileMenu(title: 'Username', value: 'ShinraRei', onPressed: () {}),

              const SizedBox(height: TSizes.spaceAntaraItem),
              const Divider(),
              const SizedBox(height: TSizes.spaceAntaraItem),

              const SizedBox(height: TSizes.spaceAntaraItem),
              const TSectionHeading(title: 'Informasi Pribadi', showActionButton: false),
              const SizedBox(height: TSizes.spaceAntaraItem),

              TProfileMenu(title: 'NIK', value: '32012345678', icon: Iconsax.copy, onPressed: () {}),
              TProfileMenu(title: 'Email', value: 'buditriono13@gmail.com', onPressed: () {}),
              TProfileMenu(title: 'No. HP', value: '08123456789', onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Pria', onPressed: () {}),
              TProfileMenu(title: 'Tanggal Lahir', value: '13 Juni, 2001', onPressed: () {}),

              const Divider(),
              const SizedBox(height: TSizes.spaceAntaraItem),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
