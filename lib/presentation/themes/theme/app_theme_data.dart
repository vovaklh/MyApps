part of '../app_theme.dart';

class AppThemeData {
  final ThemeData themeData;

  /// Should not be used directly.
  /// Please, use `DeviceAppsTheme.text(context)`
  @protected
  final AppTextThemeData textTheme;

  /// Should not be used directly.
  /// Please, use `DeviceAppsTheme.color(context)`
  @protected
  final AppColorThemeData colorTheme;

  AppThemeData({
    required this.themeData,
    required this.textTheme,
    required this.colorTheme,
  });
}
