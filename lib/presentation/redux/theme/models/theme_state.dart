import 'package:device_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required AppThemeMode themeMode,
  }) = _ThemeState;

  factory ThemeState.initial() => const ThemeState(
        themeMode: AppThemeMode.light,
      );
}
