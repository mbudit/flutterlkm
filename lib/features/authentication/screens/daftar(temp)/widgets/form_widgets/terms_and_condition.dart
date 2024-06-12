import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';

class TTermsAndCondition extends StatelessWidget {
  const TTermsAndCondition({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: TSizes.spaceAntaraItem - 10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: "Saya menyetujui ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "Terms",
                style:
                    Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark
                              ? TColors.white
                              : TColors.appAccent,
                          decoration: TextDecoration.underline,
                          decorationColor: dark
                              ? TColors.white
                              : TColors.appAccent,
                        ),
              ),
              TextSpan(
                text: " dan ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "Conditions",
                style:
                    Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark
                              ? TColors.white
                              : TColors.appAccent,
                          decoration: TextDecoration.underline,
                          decorationColor: dark
                              ? TColors.white
                              : TColors.appAccent,
                        ),
              ),
            ],
          ),
        )
      ],
    );
  }
}