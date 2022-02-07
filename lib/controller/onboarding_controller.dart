import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instantpay_distributer/helper/model/onboarding_info.dart';

class OnboardingController extends GetxController {
  RxInt currentPageIndex = RxInt(0);
  var pageController = PageController().obs;

  final List<OnboardingInfo> onboardingPages = <OnboardingInfo>[
    OnboardingInfo(
      'assets/preview1.svg',
      "High Earning Potential",
      "NetPayment will give you a chance to earn more Become a retailer,distributer and master distributer and start high earning,",
    ),
    OnboardingInfo(
      "assets/preview2.svg",
      "Get Instant Commission",
      "Get instant commission and high commission convert your commission into cash for a fee",
    ),
    OnboardingInfo(
      'assets/preview3.svg',
      "Faster Transaction",
      "Best technologieshave been used to make it as fas as possible to payment transactions.Faster transaction anywhere & anytime",
    ),
  ];
}
