import 'package:get/get.dart';
import 'package:instantpay_distributer/controller/auth_controller.dart';
import 'package:instantpay_distributer/controller/onboarding_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => OnboardingController());
  }
}
