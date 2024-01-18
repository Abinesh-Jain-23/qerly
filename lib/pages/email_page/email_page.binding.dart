import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:qerly/pages/email_page/email_page.controller.dart';

class EmailPageBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => EmailPageController());
}
