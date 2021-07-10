import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/bindings/app_binding.dart';
import 'package:getx_pattern/config/app_constants.dart';
import 'package:getx_pattern/config/app_style.dart';
import 'package:getx_pattern/config/app_translations.dart';
import 'package:getx_pattern/core/helpers.dart';
import 'package:getx_pattern/core/services/init_app_service.dart';
import 'package:getx_pattern/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync<InitAppService>(() => InitAppService().init());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final InitAppService appService = app();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Pattern',
      debugShowCheckedModeBanner: false,
      // STYLE
      theme: AppStyle.themeData(appService.theme),
      // TRANSLATIONS
      locale: appService.locale,
      translations: AppTranslations(),
      fallbackLocale: AppConstants.FALLBACK_LOCALE,
      // VIEWS
      builder: (context, child) => GestureDetector(
        onTap: () {
          WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
        },
        child: child,
      ),
      initialBinding: AppBinding(),
      initialRoute: Routes.SPLASH,
      getPages: Routes.pages,
      unknownRoute: Routes.unknownRoute,
    );
  }
}
