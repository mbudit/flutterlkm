import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/daftar(temp)/widgets/daftar_form.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class DaftarScreen extends StatelessWidget {
  const DaftarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace + 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  height: 70,
                  image: AssetImage(
                    TImages.lightAppLogo,
                  ),
                ),
                const SizedBox(height: TSizes.spaceAntaraItem),
                Text(
                  "Daftar",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),

            const SizedBox(height: TSizes.defaultSpace),

            // Kolom pengisian
            const TFormDaftar(),
          ],
        ),
      ),
    );
  }
}
