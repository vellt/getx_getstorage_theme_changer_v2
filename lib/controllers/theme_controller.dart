import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../storage/theme_storage.dart';

part 'theme_colors.dart';

class ThemeController extends GetxController {
  Themes currentTheme = Themes.light;
  final _themeStore = ThemeStore();

  @override
  void onInit() {
    super.onInit();
    currentTheme = _themeStore.getCurrentTheme();
    update();
  }

  void switchTheme() {
    _setTheme((currentTheme == Themes.light) ? Themes.dark : Themes.light);
    update();
  }

  void _setTheme(Themes theme) {
    if (theme == Themes.light) {
      _themeStore.setCurrentTheme(Themes.light);
      Get.changeTheme(ThemeData.light());
      currentTheme = Themes.light;
    } else {
      _themeStore.setCurrentTheme(Themes.dark);
      Get.changeTheme(ThemeData.dark());
      currentTheme = Themes.dark;
    }
  }

  Color _colors({required Color light, required Color dark}) {
    return currentTheme == Themes.light ? light : dark;
  }
}
