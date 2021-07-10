import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:getx_pattern/app/lang/en.dart';
import 'package:getx_pattern/app/lang/hi.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': En.translations,
        'en_US': En.translations,
        'hi': Hi.translations,
        'hi_IN': Hi.translations,
      };
}
