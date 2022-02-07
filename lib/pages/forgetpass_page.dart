import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instantpay_distributer/controller/auth_controller.dart';

class ForgetPass extends GetWidget<AuthController> {
  ForgetPass({Key? key}) : super(key: key);
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    SizedBox(
                      height: 180.0,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/login.svg',
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    SizedBox(
                      height: 20.0,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        child: const Text("Proceed with your"),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    SizedBox(
                      height: 25.0,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        child: const Text("Forget Password"),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        controller: controller.userController,
                        validator: (value) {
                          if (value!.trim() == '' || value == null) {
                            return "Please enter username";
                          }
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.verified_user_rounded),
                          label: Text('Username'),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 40)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 55,
                      child: Card(
                        elevation: 5.0,
                        color: context.theme.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: MaterialButton(
                          elevation: 5.0,
                          onPressed: () {
                            if (formkey.currentState?.validate() == true) {
                              controller.forgetpass(
                                  controller.userController.value.text);
                            }
                          },
                          child: Text(
                            "Confirm",
                            style: context.textTheme.button,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 40),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
