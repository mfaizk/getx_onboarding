import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instantpay_distributer/controller/auth_controller.dart';

class SignupPage extends GetWidget<AuthController> {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Text("SignUpPage"),
      ),
    );
  }
}
