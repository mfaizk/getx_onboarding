import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }

  // Future<ThemeData> toggleThemekMode() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   if (prefs.getString('theme') == 'light' ||
  //       prefs.getString('theme') == null) {
  //     return lightTheme;
  //   } else {
  //     return darkTheme;
  //   }
  // }
}
