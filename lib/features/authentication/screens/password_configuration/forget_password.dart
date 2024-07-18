import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceAntaraItem),

            // Subheading
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 16)),
            const SizedBox(height: TSizes.spaceAntaraSection),

            // Text Field
            TextFormField(decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right))),
            const SizedBox(height: TSizes.spaceAntaraSection),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(TTexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
