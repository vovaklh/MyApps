import 'package:flutter/material.dart';

enum AppLocale {
  en,
  ru,
}

extension AppLocaleExtension on AppLocale {
  Locale get locale {
    switch (this) {
      case AppLocale.en:
        return const Locale('en');
      case AppLocale.ru:
        return const Locale('ru');
    }
  }
}
