import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:getx_pattern/config/app_style.dart';

class AppConstants {
  // THEME
  static const AppTheme DEFAULT_THEME = AppTheme.gray;
  // TRANSLATIONS
  static const Locale DEFAULT_LOCALE = Locale('en', 'US');
  static const Locale FALLBACK_LOCALE = Locale('en', 'US');
  // ENV
  static Env get env => Env.dev;
  // API
  static const String API_BASE_URL_PROD = 'http://';
  static const String API_BASE_URL_DEV = 'http://localhost:8000/api';
  static const String API_BASE_URL_DEV_ANDROID = 'http://10.0.2.2/api';
  static const String API_BASE_URL_DEV_IOS = API_BASE_URL_DEV;
  static String get apiBaseUrl => env == Env.dev
      ? (GetPlatform.isAndroid
          ? API_BASE_URL_DEV_ANDROID
          : (GetPlatform.isWeb ? API_BASE_URL_DEV : API_BASE_URL_DEV_IOS))
      : API_BASE_URL_PROD;

  static const String API_LOGIN = '/auth/login';
  static const String API_REGISTER = '/auth/register';
  static const String API_FORGOT_PASSWORd = '/auth/password/forgot';

  static const String API_USER = '/users';
}

enum Env { dev, prod }
