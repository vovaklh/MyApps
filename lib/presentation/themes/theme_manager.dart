import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:my_apps/presentation/redux/theme/actions/set_dark_theme_action.dart';
import 'package:my_apps/presentation/redux/theme/actions/set_light_theme_action.dart';
import 'package:my_apps/presentation/redux/theme/actions/switch_theme_action.dart';

abstract class ThemeManager {
  static void setLightTheme(BuildContext context) {
    StoreProvider.dispatch(context, SetLightThemeAction());
  }

  static void setDarkTheme(BuildContext context) {
    StoreProvider.dispatch(context, SetDarkThemeAction());
  }

  static void switchTheme(BuildContext context) {
    StoreProvider.dispatch(context, SwitchThemeAction());
  }
}
