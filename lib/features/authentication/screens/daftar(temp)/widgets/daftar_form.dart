import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/daftar(temp)/verify_email.dart';
import 'package:flutterlkm/features/authentication/screens/daftar(temp)/widgets/form_widgets/terms_and_condition.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TFormDaftar extends StatelessWidget {
  const TFormDaftar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Nama
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "Nama awal", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceAntaraInputField,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "Nama akhir", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),

          const SizedBox(height: TSizes.spaceAntaraInputField),

          // Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: "E-mail", prefixIcon: Icon(Iconsax.direct)),
          ),

          const SizedBox(height: TSizes.spaceAntaraInputField),

          // Nomor HP
          TextFormField(
            decoration: const InputDecoration(
                labelText: "No. Handphone", prefixIcon: Icon(Iconsax.call)),
          ),

          const SizedBox(height: TSizes.spaceAntaraInputField),

          // Nomor BPJS
          // TextFormField(
          //   decoration: const InputDecoration(
          //       labelText: "No. BPJS", prefixIcon: Icon(Iconsax.card)),
          // ),

          // const SizedBox(height: TSizes.spaceAntaraInputField),

          // NIK
          TextFormField(
            decoration: const InputDecoration(
                labelText: "NIK", prefixIcon: Icon(Iconsax.card)),
          ),

          const SizedBox(height: TSizes.spaceAntaraInputField),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Iconsax.key),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(height: TSizes.spaceAntaraItem),

          // Checkbox persetujuan
          const TTermsAndCondition(),

          const SizedBox(height: TSizes.spaceAntaraItem),

          // Button Daftar
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.appSecondary,
                side: const BorderSide(color: TColors.appSecondary),
              ),
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Daftar"),
            ),
          ),
        ],
      ),
    );
  }
}
