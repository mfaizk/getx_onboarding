import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instantpay_distributer/const.dart';
import 'package:instantpay_distributer/controller/onboarding_controller.dart';

class OnboardingPage extends GetWidget<OnboardingController> {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                storage.write('init', 1);
                Get.offAndToNamed('/signin');
              },
              child: Text(
                'Skip',
                style: context.theme.primaryTextTheme.button,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 8,
              child: Container(
                  color: context.theme.primaryColor,
                  child: Obx(() {
                    return PageView.builder(
                      controller: controller.pageController.value,
                      onPageChanged: controller.currentPageIndex,
                      itemCount: controller.onboardingPages.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.3,
                              width: 200,
                              child: SvgPicture.asset(
                                  controller.onboardingPages[index].assetName),
                            ),
                            Expanded(
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(
                                      controller.onboardingPages[index].title,
                                      style: context
                                          .theme.primaryTextTheme.headline5,
                                    ),
                                  )),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 20),
                                  child: Text(
                                    controller.onboardingPages[index].subtitle,
                                    style: context
                                        .theme.primaryTextTheme.bodyText2,
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                          ],
                        );
                      },
                    );
                  })),
            ),
            SizedBox(
                height: 50,
                width: context.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: context.width * 0.5,
                      child: Obx(() {
                        return Row(
                          children: List.generate(
                              controller.onboardingPages.length, (index) {
                            return Container(
                              height: 12,
                              width: 20,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color:
                                    (controller.currentPageIndex.value == index)
                                        ? context.theme.focusColor
                                        : context.theme.primaryColor,
                                shape: BoxShape.circle,
                              ),
                            );
                          }),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 50,
                      width: context.width * 0.5,
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 30),
                        child: GestureDetector(
                            onTap: () {},
                            child: Obx(() {
                              return (controller.currentPageIndex.value ==
                                      controller.onboardingPages.length - 1)
                                  ? GestureDetector(
                                      onTap: () {
                                        storage.write('init', 1);
                                        Get.offAndToNamed('/signin');
                                      },
                                      child: Text(
                                        "Done",
                                        style: context.theme.textTheme.button,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        controller.pageController.value
                                            .nextPage(
                                          duration: 1.seconds,
                                          curve: Curves.fastOutSlowIn,
                                        );
                                      },
                                      child: Text(
                                        'Next',
                                        style: context.theme.textTheme.button,
                                      ),
                                    );
                            })),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}

  // Row(
            //   children:
            //       List.generate(controller.onboardingPages.length, (index) {
            //     return Container(
            //       height: 12,
            //       width: 20,
            //       padding: EdgeInsets.all(20),
            //       decoration: BoxDecoration(
            //         color: (controller.currentPageIndex.value == index)
            //             ? context.theme.hoverColor
            //             : context.theme.primaryColor,
            //         shape: BoxShape.circle,
            //       ),
            //     );
            //   }),
            // ),
            // Container(
            //     alignment: Alignment.center,
            //     height: 60,
            //     width: 60,
            //     decoration: BoxDecoration(
            //         color: context.theme.primaryColor, shape: BoxShape.circle),
            //     child: (controller.currentPageIndex.value ==
            //             controller.onboardingPages.length - 1)
            //         ? Text(
            //             "Next",
            //             style: context.theme.textTheme.button,
            //           )
            //         : Text('data')),