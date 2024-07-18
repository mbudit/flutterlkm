import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/success_screen/success_screen.dart';
import 'package:flutterlkm/navigation_menu.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

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
              Text('Pengaturan password', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceAntaraItem),

              // Subheading
              Text('Atur kata sandi untuk akun anda', style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 16)),
              const SizedBox(height: TSizes.spaceAntaraSection),

              // Baris pertama
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Masukkan password anda',
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
                ),
                obscureText: true,
              ),
              const SizedBox(height: TSizes.spaceAntaraInputField),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Masukkan password anda lagi',
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
                ),
                obscureText: true,
              ),
              const SizedBox(height: TSizes.spaceAntaraInputField),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: TColors.appSecondary),
                    onPressed: () => Get.off(() => SuccessScreen(
                          image: TImages.verifyEmail,
                          title: 'Kata sandi anda berhasil disimpan!',
                          subtitle: 'Lorem ipsum dolor amet',
                          onPressed: () => Get.off(() => const NavigationMenu()),
                        )),
                    child: const Text('Ganti password')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
