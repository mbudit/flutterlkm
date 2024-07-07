import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/images/circular_image.dart';
import 'package:flutterlkm/common/widgets/images/rounded_container.dart';
import 'package:flutterlkm/common/widgets/texts/subitem_title_text_with_icon.dart';
import 'package:flutterlkm/utils/constants/enums.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class TSubItemCard extends StatelessWidget {
  const TSubItemCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // -- Gambar Brand
            const Flexible(
              child: TCircularImage(
                image: TImages.hospitalIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
              ),
            ),

            const SizedBox(height: TSizes.spaceAntaraItem / 2),

            /// -- Text Brand
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TSubItemTitleTextWithIcon(title: 'Test', subItemTextSize: TextSizes.large),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}