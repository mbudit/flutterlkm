import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/enums.dart';

class TSubItemTitleText extends StatelessWidget {
  const TSubItemTitleText({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.subItemTextSize = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes subItemTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,

        // Periksa SubItemTextSize yang mana yang dipake terus stylenya di set
        style: subItemTextSize == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium?.copyWith(color: color, fontSize: 14)
            : subItemTextSize == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : subItemTextSize == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium! 
                        .apply(color: color));
  }
}
