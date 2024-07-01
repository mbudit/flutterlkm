import 'package:flutter/material.dart';

class TItemPriceTag extends StatelessWidget {
  const TItemPriceTag({
    super.key,
    this.mataUang = 'Rp. ',
    required this.priceTag,
    this.isLarge = false,
    this.lineThrough = false,
    this.maxLines = 1,
  });

  final String mataUang, priceTag;
  final bool isLarge;
  final bool lineThrough;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      mataUang + priceTag,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium?.copyWith(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge?.copyWith(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}