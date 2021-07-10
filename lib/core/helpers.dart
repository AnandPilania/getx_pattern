import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/models/user.dart';
import 'package:getx_pattern/app/services/app_service.dart';

AppService app() {
  return Get.find<AppService>();
}

User? user() {
  return app().user;
}

Locale decodeLocale(String from) {
  var splitted = from.split('_');

  if (splitted.length > 0 && splitted.last.isNotEmpty) {
    return Locale(splitted.first, splitted.last);
  }

  return Locale(from);
}

String encodeLocale(Locale from) {
  return '${from.languageCode}_${from.countryCode}';
}
