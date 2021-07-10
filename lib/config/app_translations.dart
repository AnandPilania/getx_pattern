import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:getx_pattern/resources/lang/en.dart';
import 'package:getx_pattern/resources/lang/hi.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': En.translations,
        'en_US': En.translations,
        'hi': Hi.translations,
        'hi_IN': Hi.translations,
      };
}
