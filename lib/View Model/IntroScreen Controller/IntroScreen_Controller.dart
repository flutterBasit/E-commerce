import 'package:e_commerce/View/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class introScreen_controller extends GetxController {
  final List<PageModel> pages = [
    PageModel(
        title: 'Choose Products',
        description:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        assetImage: Image.asset('assets/images/IntroScreen1.png')),
    PageModel(
        title: 'Make Payment',
        description:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        assetImage: Image.asset('assets/images/IntroScreen2.png')),
    PageModel(
        title: 'Get Your Order',
        description:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        assetImage: Image.asset(
          'assets/images/IntroScreen3.png',
        )),
  ];

  var currentPage = 0.obs;
  final PageController pageController = PageController();
//
  void nextPage() {
    if (currentPage.value < pages.length - 1) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
      // currentPage.value++;
    } else {
      Get.offAll(const SplashScreen());
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      //   currentPage.value--;
      pageController.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void goToPage(int index) {
    currentPage.value = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}

class PageModel {
  final String title;
  final String description;
  final Image assetImage;

  PageModel(
      {required this.title,
      required this.description,
      required this.assetImage});
}
