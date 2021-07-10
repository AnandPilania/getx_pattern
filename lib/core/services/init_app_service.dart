import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_pattern/app/models/user.dart';
import 'package:getx_pattern/config/app_constants.dart';
import 'package:getx_pattern/config/app_style.dart';
import 'package:getx_pattern/core/helpers.dart';

class InitAppService extends GetxService {
  InitAppService? _singleton;

  // GetStorage
  static const String kStorage = 'ksp_app';
  GetStorage? _storage;
  String _currentStorage = kStorage;

  GetStorage box({String container = kStorage}) {
    _getBox(container);
    return _storage!;
  }

  T boxRead<T>(String key, {T? defValue, String container = kStorage}) {
    _getBox(container);

    if (defValue == null) {
      return _storage?.read(key) ?? '' as T;
    }

    return _storage?.read(key) ?? defValue;
  }

  void _getBox(String container) {
    if (container != _currentStorage || _storage == null) {
      _currentStorage = container;
      _storage = GetStorage(container);
    }
  }

  // Theming
  static const String kTheme = 'theme';
  Rx<AppTheme> _theme = AppConstants.DEFAULT_THEME.obs;
  AppTheme get theme => _theme.value;
  set theme(AppTheme v) => _theme.value = v;
  void _initTheme() {
    var sTheme = boxRead<String>(kTheme);
    if (sTheme.isNotEmpty) {
      AppTheme.values.forEach((t) {
        if (sTheme == t.toString()) {
          theme = t;
          Get.changeTheme(AppStyle.themeData(theme));
        }
      });
    }
  }

  // Translations
  static const String kLocale = 'locale';
  Rx<Locale> _locale = AppConstants.DEFAULT_LOCALE.obs;
  Locale get locale => _locale.value;
  set locale(Locale v) => _locale.value = v;
  void _initLocale() {
    var sLocale = boxRead<String>(kLocale);
    if (sLocale.isNotEmpty) {
      Locale decodedLocale = decodeLocale(sLocale);
      if (decodedLocale != locale) {
        locale = decodedLocale;
        Get.updateLocale(locale);
      }
    }
  }

  // User/Authentication State
  static const String kUser = 'user';
  User? user;
  void _initUser() {
    var sUser = boxRead<String>(kUser);
    if (sUser.isNotEmpty) {
      user = User.fromJson(jsonDecode(sUser));
    }
  }

  Future<InitAppService> init() async {
    await GetStorage.init();

    _initUser();
    _initTheme();
    _initLocale();

    if (_singleton == null) {
      _singleton = this;
    }

    return _singleton!;
  }
}
