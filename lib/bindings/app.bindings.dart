import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:qerly/pages/welcome_page/welcome_page.controller.dart';

class AppGlobalBindings extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => WelcomePageController());
}
