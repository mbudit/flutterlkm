import 'package:flutter/material.dart';
import 'package:flutterlkm/common/styles/shadow_styles.dart';
import 'package:flutterlkm/common/widgets/icons/circular_icon.dart';
import 'package:flutterlkm/common/widgets/images/rounded_container.dart';
import 'package:flutterlkm/common/widgets/images/rounded_images.dart';
import 'package:flutterlkm/common/widgets/texts/product_price_text.dart';
import 'package:flutterlkm/common/widgets/texts/product_title_text.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TItemCardVertical extends StatelessWidget {
  const TItemCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalItemShadow],
          borderRadius: BorderRadius.circular(TSizes.itemImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// --- Thumbnail Image, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const TRoundedImage(
                    imageUrl: TImages.itemImage1,
                    applyImageRadius: true,
                  ),

                  /// Discount Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.appSecondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: TColors.black, fontSize: 12)),
                    ),
                  ),

                  /// Wishlist Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceAntaraItem / 2),

            /// --- Isian / Details ---
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// --- Judul item ---
                  const TItemTitleText(title: 'Hubungi kami!', smallSize: true),
                  const SizedBox(height: TSizes.spaceAntaraItem / 2),
                  Row(
                    children: [
                      
                      /// --- Subjudul Item ---
                      Text(
                        'Test Text',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontSize: 14),
                      ),
                      const SizedBox(width: TSizes.xs),

                      /// --- Icon samping subjudul ---
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.appPrimary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                /// --- Price tag (kalo dipake sih) ---
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TItemPriceTag(
                    priceTag: '1.000',
                  ),
                ),

                /// --- Button plus dalam item ---
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.itemImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child:
                        Center(child: Icon(Iconsax.add, color: TColors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
