import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/success_screen/success_screen.dart';
import 'package:flutterlkm/navigation_menu.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AlamatScreen extends StatelessWidget {
  const AlamatScreen({super.key});

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
              Text('Pengaturan alamat', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceAntaraItem),

              // Subheading
              Text('Atur alamat anda disini atau ubah alamat anda sesuai tempat tinggal anda', style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 16)),
              const SizedBox(height: TSizes.spaceAntaraSection),

              // Baris pertama
              TextFormField(decoration: const InputDecoration(labelText: 'Baris pertama', prefixIcon: Icon(Iconsax.home))),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Baris kedua
              TextFormField(decoration: const InputDecoration(labelText: 'Baris kedua', prefixIcon: Icon(Iconsax.home))),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Kelurahan
              TextFormField(decoration: const InputDecoration(labelText: 'Kelurahan', prefixIcon: Icon(Iconsax.home))),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Kecamatan
              TextFormField(decoration: const InputDecoration(labelText: 'Kecamatan', prefixIcon: Icon(Iconsax.home))),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Kabupaten
              TextFormField(decoration: const InputDecoration(labelText: 'Kabupaten', prefixIcon: Icon(Iconsax.home))),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: TColors.appSecondary),
                    onPressed: () => Get.off(() => SuccessScreen(
                          image: TImages.verifyEmail,
                          title: 'Alamatmu Berhasil Disimpan!',
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
