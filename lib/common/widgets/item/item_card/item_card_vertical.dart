import 'package:flutter/material.dart';
import 'package:flutterlkm/common/styles/shadow_styles.dart';
import 'package:flutterlkm/common/widgets/images/rounded_container.dart';
import 'package:flutterlkm/common/widgets/images/rounded_images.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';

class TItemCardVertical extends StatelessWidget {
  const TItemCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalItemShadow],
        borderRadius: BorderRadius.circular(TSizes.itemImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const TRoundedImage(imageUrl: TImages.itemImage1, applyImageRadius: true,),

                Positioned(
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.appSecondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.black, fontSize: 12)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
