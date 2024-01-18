import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:qerly/pages/ranking_page/ranking_page.controller.dart';

class RankingPageBinding extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => RankingPageController());
}
