import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/constants/text_strings.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                  image: const AssetImage(TImages.verifyEmailSuccess),
                  width: THelperFunctions.screenWidth() * 0.7,
                ),
                const SizedBox(height: TSizes.spaceAntaraSection),

                // Title dan Subtitle
                Text(
                  TTexts.changeYourPasswordTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceAntaraItem),

                Text(
                  TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.spaceAntaraSection),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(TTexts.done),
                  ),
                ),
                const SizedBox(height: TSizes.spaceAntaraItem),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(TTexts.resendEmail, style: TextStyle(fontSize: 15),),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
