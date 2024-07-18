import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/subitem/subitem_card/subitem_card.dart';
import 'package:flutterlkm/navigation_menu.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

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
              Text('Riwayat keluhan', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceAntaraItem),

              const Divider(),
              const SizedBox(height: TSizes.spaceAntaraItem),

              // Kumpulan riwayat
              const TSubItemCard(showBorder: true, title: 'Riwayat #1', subtitle: 'RSUD Dr. Slamet',),
              const SizedBox(height: TSizes.spaceAntaraItem),
              const TSubItemCard(showBorder: true, title: 'Riwayat #2', subtitle: 'RS Guntur',),
              const SizedBox(height: TSizes.spaceAntaraItem),
              const TSubItemCard(showBorder: true, title: 'Riwayat #3', subtitle: 'RS Nurhayanti',),
              const SizedBox(height: TSizes.spaceAntaraItem),
              const TSubItemCard(showBorder: true, title: 'Riwayat #3', subtitle: 'RSUD Pameungpeuk',),
              const SizedBox(height: TSizes.spaceAntaraSection),


              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: TColors.appSecondary),
                    onPressed: () => Get.off(() => const NavigationMenu()),
                    child: const Text('Kembali')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}