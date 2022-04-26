import 'package:device_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const _themeModeKey = 'THEME_MODE_KEY';

  late SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> deleteThemeMode() async => _preferences.remove(_themeModeKey);
  Future<bool> setThemeMode(AppThemeMode mode) async =>
      _preferences.setString(_themeModeKey, mode.name);
  AppThemeMode? getThemeMode() {
    final String? value = _preferences.getString(_themeModeKey);
    return value != null
        ? AppThemeMode.values.firstWhere((element) => element.name == value)
        : null;
  }
}
