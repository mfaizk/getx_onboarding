import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:instantpay_distributer/const.dart';
import 'package:instantpay_distributer/controller/binding/binding.dart';
import 'package:instantpay_distributer/helper/pages.dart';
import 'package:instantpay_distributer/controller/theme_controller.dart';

void main() async {
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeController().theme,
      initialRoute: (storage.read('init') == 0 || storage.read('init') == null)
          ? '/onbardingpage'
          : '/home',
      getPages: Pages.pages,
    );
  }
}
