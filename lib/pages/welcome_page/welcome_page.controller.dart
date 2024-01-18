import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qerly/pages/welcome_page/welcome_page.variables.dart';

class WelcomePageController extends GetxController with WelcomePageVariables {
  changeLanguage() {
    Get.locale?.languageCode == 'en'
        ? Get.updateLocale(const Locale('jp'))
        : Get.updateLocale(const Locale('en'));
    language.value = !language.value;
    update();
  }

  changeTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    isDarkMode.value = !isDarkMode.value;
  }
}
