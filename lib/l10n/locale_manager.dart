import 'package:async_redux/async_redux.dart';
import 'package:device_apps/presentation/redux/locale/actions/set_en_locale_action.dart';
import 'package:device_apps/presentation/redux/locale/actions/set_ru_locale_action.dart';
import 'package:flutter/material.dart';

abstract class LocaleManager {
  static void setRuLocale(BuildContext context) {
    StoreProvider.dispatch(context, SetRuLocaleAction());
  }

  static void setEnLocale(BuildContext context) {
    StoreProvider.dispatch(context, SetEnLocaleAction());
  }
}
