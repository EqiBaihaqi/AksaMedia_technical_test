import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/controller/onboarding_controller.dart';
import 'package:aksamedia_technical_test/page/onboarding_page/page_container_widget.dart';
import 'package:aksamedia_technical_test/page/product_page/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {
                controller.pageController.jumpToPage(3);
              },
              child: Text(
                'Lewati',
                style: TextStyle(
                  fontSize: 16,
                  color: ColorPrimary.primary800,
                ),
              ))
        ],
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            children: [
              PageContainerWidget(
                elevatedButton: () {
                  controller.pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                titleText: 'Gratis Materi Belajar Menjadi Seller Handal',
                subtitleText:
                    'Nggak bisa jualan?\nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
                imageBackground: 'assets/image/onboarding1.png',
              ),
              PageContainerWidget(
                elevatedButton: () {
                  controller.pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                titleText: 'Ribuan Produkdengan Kualitas Terbaik',
                subtitleText:
                    'Tokorame menyediakan ribuan produk dengan kualitas derbaik dari seller terpercaya',
                imageBackground: 'assets/image/onboarding2.png',
              ),
              PageContainerWidget(
                elevatedButton: () {
                  Get.to(() => const ProductPage());
                },
                titleText: 'Toko Online Unik Untuk Kamu Jualan',
                subtitleText:
                    'Subdomain unik dan toko online profesional siap pakai',
                imageBackground: 'assets/image/onboarding3.png',
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller.pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.white,
                  dotHeight: 4,
                  dotWidth: 4,
                  activeDotColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
