import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(microseconds: 500),
      curve: Curves.bounceInOut,
    );
  }

  void goToProduct() {}
}
