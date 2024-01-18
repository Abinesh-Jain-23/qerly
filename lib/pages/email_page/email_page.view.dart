import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:qerly/pages/email_page/email_page.controller.dart';

class EmailPageView extends GetResponsiveView<EmailPageController> {
  EmailPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(title: Text('qerly'.tr)),
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                controller: controller.textEditingController,
                decoration: InputDecoration(
                  labelText: 'label'.tr,
                  hintText: 'example@mail.com',
                ),
                onChanged: (value) => controller.email.value = value,
                validator: (value) => controller.validateEmail(value),
              ),
            ),
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
              onPressed: controller.email.value.isEmpty ||
                      controller.validateEmail(controller.email.value) != null
                  ? null
                  : controller.onContinuePressed,
              child: Text('continue'.tr),
            ),
          ),
        ));
  }
}
