import 'package:async_redux/async_redux.dart';
import 'package:device_apps/core/di/locator.dart';
import 'package:device_apps/data/datasources/local/shared_prefs.dart';
import 'package:device_apps/l10n/app_locale.dart';
import 'package:device_apps/presentation/redux/app_state.dart';

class InitLocaleAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final locale = locator<SharedPrefs>().getLocale() ?? AppLocale.en;
    return state.copyWith(appLocale: locale);
  }
}
