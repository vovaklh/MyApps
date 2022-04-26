import 'package:device_apps/l10n/app_locale.dart';
import 'package:device_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppThemeMode themeMode,
    required AppLocale appLocale,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        themeMode: AppThemeMode.light,
        appLocale: AppLocale.en,
      );
}
