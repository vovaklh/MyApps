import 'package:async_redux/async_redux.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/data/datasources/local/shared_prefs.dart';
import 'package:my_apps/presentation/redux/app_state.dart';
import 'package:my_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';

class InitThemeAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final themeMode =
        locator<SharedPrefs>().getThemeMode() ?? AppThemeMode.light;
    return state.copyWith(themeMode: themeMode);
  }
}
