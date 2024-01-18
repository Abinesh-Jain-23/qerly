import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qerly/constants/app.strings.dart';
import 'package:qerly/pages/email_page/email_page.controller.dart';

class EmailPageView extends GetResponsiveView<EmailPageController> {
  EmailPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.email)),
      body: const Center(
        child: TextField(),
      ),
    );
  }
}
