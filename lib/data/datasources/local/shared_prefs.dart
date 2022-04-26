import 'package:device_apps/l10n/app_locale.dart';
import 'package:device_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const _themeModeKey = 'THEME_MODE_KEY';
  static const _localeKey = 'LOCALE_KEY';

  late SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> setThemeMode(AppThemeMode mode) async =>
      _preferences.setString(_themeModeKey, mode.name);
  AppThemeMode? getThemeMode() {
    final String? value = _preferences.getString(_themeModeKey);
    return value != null
        ? AppThemeMode.values.firstWhere((element) => element.name == value)
        : null;
  }

  Future<bool> setLocale(AppLocale locale) async =>
      _preferences.setString(_localeKey, locale.name);
  AppLocale? getLocale() {
    final String? value = _preferences.getString(_localeKey);
    return value != null
        ? AppLocale.values.firstWhere((element) => element.name == value)
        : null;
  }
}
