import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/daftar(temp)/daftar.dart';
import 'package:flutterlkm/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:flutterlkm/navigation_menu.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceAntaraSection),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: "Masukkan email anda"),
            ),

            const SizedBox(height: TSizes.spaceAntaraItem),

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Masukkan password anda",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
              obscureText: true,
            ),

            // Checkbox remember me dan button Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Ingat saya
                Row(
                  children: [Checkbox(value: true, onChanged: (value) {}), const Text("Ingat saya")],
                ),

                // Lupa password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text("Lupa Password", style: TextStyle(fontSize: 14)),
                )
              ],
            ),

            // Button "Masuk"
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.appSecondary,
                  side: const BorderSide(color: TColors.appSecondary),
                ),
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text("Masuk"),
              ),
            ),

            const SizedBox(height: TSizes.spaceAntaraItem),

            // Button "Daftar"
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.appAccent,
                  side: const BorderSide(color: TColors.appAccent),
                ),
                onPressed: () => Get.to(() => const DaftarScreen()),
                child: const Text("Daftar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
