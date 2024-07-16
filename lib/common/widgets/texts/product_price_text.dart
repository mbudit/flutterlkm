import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';

class TItemPriceTag extends StatelessWidget {
  const TItemPriceTag({
    super.key,
    this.mataUang = 'Rp. ',
    required this.priceTag,
    this.isLarge = false,
    this.lineThrough = false,
    this.maxLines = 1,
    this.textColor,
  });

  final String mataUang, priceTag;
  final bool isLarge;
  final bool lineThrough;
  final int maxLines;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Text(
      mataUang + priceTag,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium?.copyWith(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
                color: textColor,
              )
          : Theme.of(context).textTheme.titleLarge?.copyWith(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
                color: textColor,
              ),
    );
  }
}
