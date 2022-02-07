import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isObscurePass = false.obs;
  RxBool isAuthenticated = false.obs;
  var userController = TextEditingController();
  var passController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    authenticationChecker();
    // print(storage.read('init'));
  }

  void authenticationChecker() {
    // print('auth');
  }

  void login(String user, String pass) {
    Get.snackbar('Welcome back', user);
    passController.clear();
    userController.clear();
  }

  void signup(String user, String pass) {
    //
  }
  void forgetpass(String user) {
    Get.snackbar(
      'Success',
      'Link has been sent to $user',
    );
    userController.clear();
  }
}
