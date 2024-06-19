import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor = TColors.white,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis),
        if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}