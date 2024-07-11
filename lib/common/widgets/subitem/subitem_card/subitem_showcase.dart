import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/images/rounded_container.dart';
import 'package:flutterlkm/common/widgets/subitem/subitem_card/subitem_card.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';

class TSubItemShowcase extends StatelessWidget {
  const TSubItemShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceAntaraItem),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          /// --- Brand with item count
          const TSubItemCard(showBorder: false, title: 'Test',),

          const SizedBox(height: TSizes.spaceAntaraSection),

          /// --- Brand with top 3 images
          Row(children: images.map((image) => subItemTopProductImageWidget(image, context)).toList())
        ],
      ),
    );
  }

  Widget subItemTopProductImageWidget(String image, context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        backgroundColor: dark ? TColors.darkerGrey : TColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
