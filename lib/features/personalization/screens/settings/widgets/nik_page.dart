import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/success_screen/success_screen.dart';
import 'package:flutterlkm/navigation_menu.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NikPage extends StatelessWidget {
  const NikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text('Pengaturan NIK', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceAntaraItem),

              // Subheading
              Text('Atur NIK anda disini', style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 16)),
              const SizedBox(height: TSizes.spaceAntaraSection),

              // Baris pertama
              TextFormField(decoration: const InputDecoration(labelText: '32...', prefixIcon: Icon(Iconsax.user))),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: TColors.appSecondary),
                    onPressed: () => Get.off(() => SuccessScreen(
                          image: TImages.verifyEmail,
                          title: 'NIK anda berhasil disimpan!',
                          subtitle: 'Lorem ipsum dolor amet',
                          onPressed: () => Get.off(() => const NavigationMenu()),
                        )),
                    child: const Text(TTexts.submit)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}