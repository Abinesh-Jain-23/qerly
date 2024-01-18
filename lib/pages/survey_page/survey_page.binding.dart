import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:qerly/pages/survey_page/survey_page.controller.dart';

class SurveyPageBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => SurveyPageController());
}
