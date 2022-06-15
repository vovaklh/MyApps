import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:my_apps/l10n/app_locale.dart';
import 'package:my_apps/presentation/redux/locale/actions/set_en_locale_action.dart';
import 'package:my_apps/presentation/redux/locale/actions/set_locale_action.dart';
import 'package:my_apps/presentation/redux/locale/actions/set_ru_locale_action.dart';

abstract class LocaleManager {
  static void setRuLocale(BuildContext context) {
    StoreProvider.dispatch(context, SetRuLocaleAction());
  }

  static void setEnLocale(BuildContext context) {
    StoreProvider.dispatch(context, SetEnLocaleAction());
  }

  static void setLocaleAction(BuildContext context, AppLocale locale) {
    StoreProvider.dispatch(context, SetLocaleAction(locale));
  }
}
