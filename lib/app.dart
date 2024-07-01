import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutterlkm/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.darkTheme,   
      home: const OnBoardingScreen(),
    );
  }
}