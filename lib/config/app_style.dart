import 'package:flutter/material.dart';

enum AppTheme { violetRed, steel, gray }

class AppStyle {
  static int _violetRedPrimary = 0xffff3d7b;
  static MaterialColor violetRed = MaterialColor(
    _violetRedPrimary,
    <int, Color>{
      50: Color(0xfffffafc),
      100: Color(0xfffffafc),
      200: Color(0xffffdbe7),
      300: Color(0xffffbdd2),
      400: Color(0xffff8fb2),
      500: Color(_violetRedPrimary),
      600: Color(0xffff0554),
      700: Color(0xffeb004a),
      800: Color(0xffd10042),
      900: Color(0xffb30039),
    },
  );

  static int _steelPrimary = 0xff446f7d;
  static MaterialColor steel = MaterialColor(
    _steelPrimary,
    <int, Color>{
      50: Color(0xfffcfdfd),
      100: Color(0xfffcfdfd),
      200: Color(0xffd7e5e9),
      300: Color(0xffb0cbd4),
      400: Color(0xff78a6b5),
      500: Color(_steelPrimary),
      600: Color(0xff436c7a),
      700: Color(0xff3f6674),
      800: Color(0xff3d6370),
      900: Color(0xff3a5e6a),
    },
  );

  static int _grayPrimary = 0xfff0f2f5;
  static MaterialColor gray = MaterialColor(
    _grayPrimary,
    <int, Color>{
      50: Color(0xfffcfcfd),
      100: Color(0xfffcfcfd),
      200: Color(0xfff9fafb),
      300: Color(0xfff6f7f9),
      400: Color(0xfff3f4f7),
      500: Color(_grayPrimary),
      600: Color(0xffd4dae2),
      700: Color(0xffafbaca),
      800: Color(0xff8595ad),
      900: Color(0xff4b5b71),
    },
  );

  static MaterialColor theme(AppTheme theme) {
    switch (theme) {
      case AppTheme.violetRed:
        return violetRed;
      case AppTheme.steel:
        return steel;
      case AppTheme.gray:
        return gray;
    }
  }

  static ThemeData themeData(
    AppTheme theme, {
    String? fontFamily,
    Color? scaffoldBackgroundColor,
  }) {
    return ThemeData(
      fontFamily: fontFamily ?? 'Inter',
      primarySwatch: AppStyle.theme(theme),
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? AppStyle.theme(theme)[50],
    ).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 14),
      ),
    );
  }
}
