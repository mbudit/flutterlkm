import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/appbar/appbar.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutterlkm/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:flutterlkm/common/widgets/list_tile/user_profile_header.dart';
import 'package:flutterlkm/common/widgets/texts/section_heading.dart';
import 'package:flutterlkm/features/personalization/screens/profile/profile.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // --- User Appbar ---
                  TAppBar(
                    title: Text('Akun', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: TColors.white)),
                  ),

                  // --- User Header ---
                  TUserProfileHeader(onPressed: () => Get.to(() => const ProfileScreen()),),
                  const SizedBox(height: TSizes.spaceAntaraSection),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // --- Account Settings ---
                  const TSectionHeading(title: 'Pengaturan Akun', showActionButton: false),
                  const SizedBox(height: TSizes.spaceAntaraItem),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'Alamat', subtitle: 'Pengaturan alamat akun', onTap: () {}),
                  TSettingsMenuTile(icon: Iconsax.mobile, title: 'Nomor handphone', subtitle: 'Pengaturan nomor telepon', onTap: () {}),
                  TSettingsMenuTile(icon: Iconsax.profile_tick, title: 'NIK', subtitle: 'Pengaturan Nomor Induk Kewarganegaaran', onTap: () {}),
                  TSettingsMenuTile(icon: Iconsax.health, title: 'Riwayat keluhan', subtitle: 'Riwayat dari seluruh keluhan anda', onTap: () {}),
                  TSettingsMenuTile(icon: Iconsax.password_check, title: 'Kata sandi', subtitle: 'Pengaturan kata sandi untuk akun', onTap: () {}),

                  // -- App Settings --
                  const SizedBox(height: TSizes.spaceAntaraSection),
                  const TSectionHeading(title: 'Pengaturan Aplikasi', showActionButton: false),
                  const SizedBox(height: TSizes.spaceAntaraItem),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload datamu ke Firebase Cloud'),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Menunjukkan layanan kesehatan terdekat anda',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(height: TSizes.spaceAntaraSection),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceAntaraSection),
                ],
              ),
            ),

            /// --- Body
          ],
        ),
      ),
    );
  }
}
