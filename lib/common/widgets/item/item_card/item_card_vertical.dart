import 'package:flutter/material.dart';
import 'package:flutterlkm/common/styles/shadow_styles.dart';
// import 'package:flutterlkm/common/widgets/icons/circular_icon.dart';
import 'package:flutterlkm/common/widgets/images/rounded_container.dart';
import 'package:flutterlkm/common/widgets/images/rounded_images.dart';
// import 'package:flutterlkm/common/widgets/texts/product_price_text.dart';
import 'package:flutterlkm/common/widgets/texts/product_title_text.dart';
import 'package:flutterlkm/common/widgets/texts/subitem_title_text_with_icon.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
// import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';
// import 'package:iconsax/iconsax.dart';

class TItemCardVertical extends StatelessWidget {
  const TItemCardVertical({
    super.key,
    required this.itemTitle,
    required this.itemSubtitle,
    required this.image,
  });

  final String itemTitle, itemSubtitle, image;

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
                  TRoundedImage(
                    imageUrl: image,
                    applyImageRadius: true,
                  ),

                  /// Discount Tag
                  // Positioned(
                  //   top: 12,
                  //   child: TRoundedContainer(
                  //     radius: TSizes.sm,
                  //     backgroundColor: TColors.appSecondary.withOpacity(0.8),
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: TSizes.sm, vertical: TSizes.xs),
                  //     child: Text('25%',
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .labelLarge
                  //             ?.copyWith(color: TColors.black, fontSize: 12)),
                  //   ),
                  // ),

                  /// Wishlist Button
                  // Positioned(
                  //   top: 0,
                  //   right: 0,
                  //   child: TCircularIcon(
                  //     icon: Iconsax.heart5,
                  //     color: Colors.red,
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceAntaraItem / 2),

            /// --- Isian / Details ---
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// --- Judul item ---
                  TItemTitleText(title: itemTitle, smallSize: true),
                  const SizedBox(height: TSizes.spaceAntaraItem / 2),

                  // ---- Subjudul Item dengan iconnya ---
                  TSubItemTitleTextWithIcon(
                    title: itemSubtitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     /// --- Price tag (kalo dipake sih) ---
            //     const Padding(
            //       padding: EdgeInsets.only(left: TSizes.sm),
            //       child: TItemPriceTag(
            //         priceTag: '1.000',
            //       ),
            //     ),

            //     /// --- Button plus dalam item ---
            //     Container(
            //       decoration: const BoxDecoration(
            //         color: TColors.dark,
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(TSizes.cardRadiusMd),
            //           bottomRight: Radius.circular(TSizes.itemImageRadius),
            //         ),
            //       ),
            //       child: const SizedBox(
            //         width: TSizes.iconLg * 1.2,
            //         height: TSizes.iconLg * 1.2,
            //         child:
            //             Center(child: Icon(Iconsax.add, color: TColors.white)),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
