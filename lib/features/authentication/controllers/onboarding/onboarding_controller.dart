import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/login%20(temp)/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Kumpulan variabel
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update index saat page scroll
  void updatePageIndicator(index)  => currentPageIndex.value = index;

  // Jump ke page yang spesifik
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update index dan jump ke page yang spesifik
  void nextPage() {
    if(currentPageIndex.value == 2) {
      Get.to(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update index dan jump ke halaman terakhir
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}