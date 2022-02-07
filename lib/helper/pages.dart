import 'package:get/get.dart';
import 'package:instantpay_distributer/controller/binding/binding.dart';
import 'package:instantpay_distributer/services/auth_guard.dart';
import 'package:instantpay_distributer/pages/forgetpass_page.dart';
import 'package:instantpay_distributer/pages/home_page.dart';
import 'package:instantpay_distributer/pages/on_boarding/onboarding_page.dart';
import 'package:instantpay_distributer/pages/signin_page.dart';
import 'package:instantpay_distributer/pages/signup_page.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: '/home',
      page: () => HomePage(),
      middlewares: [
        AuthGuard(),
      ],
      //Binding also can be added here
      // binding: InitialBinding()

      //Protected Route will be placed inside children
      // children: [],
    ),
    GetPage(
      name: '/onbardingpage',
      page: () => OnboardingPage(),
    ),
    GetPage(
      name: '/forgetpass',
      page: () => ForgetPass(),
    ),
    GetPage(
      name: '/signup',
      page: () => SignupPage(),
    ),
    GetPage(
      name: '/signin',
      page: () => SigninPage(),
      transition: Transition.topLevel,
    ),
  ];
}
