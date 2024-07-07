import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:flutterlkm/common/widgets/layouts/grid_layout.dart';
import 'package:flutterlkm/common/widgets/subitem/subitem_card/subitem_showcase.dart';
import 'package:flutterlkm/common/widgets/texts/section_heading.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Sub-Items
              const TSubItemShowcase(
                images: [
                  TImages.itemImage1,
                  TImages.itemImage1,
                  TImages.itemImage1,
                ],
              ),
              const TSubItemShowcase(
                images: [
                  TImages.itemImage1,
                  TImages.itemImage1,
                  TImages.itemImage1,
                ],
              ),
              const SizedBox(height: TSizes.spaceAntaraItem),

              /// --- Items
              TSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: TSizes.spaceAntaraItem),

              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TItemCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
