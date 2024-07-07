import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/appbar/appbar.dart';
import 'package:flutterlkm/common/widgets/icons/circular_icon.dart';
import 'package:flutterlkm/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:flutterlkm/common/widgets/layouts/grid_layout.dart';
import 'package:flutterlkm/features/lkm/screens/home/home.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(
              const HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TItemCardVertical())],
          ),
        ),
      ),
    );
  }
}
