import 'package:flutter/material.dart';
import 'package:my_apps/core/utils/extensions/build_context_ext.dart';

enum AppLocale {
  en,
  ru;

  const AppLocale();

  Locale get locale {
    switch (this) {
      case AppLocale.en:
        return const Locale('en');
      case AppLocale.ru:
        return const Locale('ru');
    }
  }

  String toLanguage(BuildContext context) {
    switch (this) {
      case AppLocale.en:
        return context.localizations.english;
      case AppLocale.ru:
        return context.localizations.russian;
    }
  }
}
