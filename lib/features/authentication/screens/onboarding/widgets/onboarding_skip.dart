import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: Container(
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
