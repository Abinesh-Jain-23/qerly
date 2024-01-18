import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qerly/pages/welcome_page/welcome_page.controller.dart';

class WelcomePageView extends GetResponsiveView<WelcomePageController> {
  WelcomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                value: controller.language.value,
                onChanged: (value) => controller.changeLanguage(),
              ),
              Switch(
                value: controller.isDarkMode.value,
                onChanged: (value) => controller.changeTheme(),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('welcome'.tr),
              ElevatedButton(
                onPressed: () => Get.toNamed('/email'),
                child: const Text('Get Started'),
              ),
              Text('question1'.tr)
            ],
          ),
        ));
  }
}
