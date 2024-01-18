import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:qerly/bindings/app.bindings.dart';
import 'package:qerly/pages/email_page/email_page.binding.dart';
import 'package:qerly/pages/email_page/email_page.view.dart';
import 'package:qerly/pages/welcome_page/welcome_page.binding.dart';
import 'package:qerly/pages/welcome_page/welcome_page.view.dart';

class AppPages {
  AppPages._();
  static const initial = "/welcome";
  static final initialBinding = AppGlobalBindings();
  static final List<GetPage> routes = [
    GetPage(
      name: '/welcome',
      page: () => WelcomePageView(),
      binding: WelcomePageBinding(),
    ),
    GetPage(
      name: '/email',
      page: () => EmailPageView(),
      binding: EmailPageBinding(),
    ),
  ];
}
