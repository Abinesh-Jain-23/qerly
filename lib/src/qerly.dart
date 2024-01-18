import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:qerly/constants/app.pages.dart';
import 'package:qerly/translations/translation.dart';

class Qerly extends StatelessWidget {
  const Qerly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: const Locale('jp'),
      initialBinding: AppPages.initialBinding,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
