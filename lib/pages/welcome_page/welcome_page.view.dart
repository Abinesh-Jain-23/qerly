import 'package:flutter/cupertino.dart';
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
              CupertinoSwitch(
                value: controller.language.value,
                onChanged: (value) => controller.changeLanguage(),
              ),
              Center(child: Text(controller.language.value ? 'En' : 'Jp')),
              CupertinoSwitch(
                value: controller.isDarkMode.value,
                onChanged: (value) => controller.changeTheme(),
              ),
              Center(
                  child: Text(
                      controller.isDarkMode.value ? 'dark'.tr : 'light'.tr)),
              const SizedBox(width: 10),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'qerly'.tr,
                style: const TextStyle(fontSize: 48),
                textAlign: TextAlign.center,
              ),
              Text(
                'description'.tr,
                textAlign: TextAlign.center,
              )
            ],
          ),
          bottomNavigationBar: Container(
            height: 46,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0))),
              ),
              onPressed: () => Get.toNamed('/email'),
              child: Text('started'.tr),
            ),
          ),
        ));
  }
}
