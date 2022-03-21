part of '../device_apps_theme.dart';

class DeviceAppsThemeData {
  final ThemeData themeData;

  /// Should not be used directly.
  /// Please, use `DeviceAppsTheme.text(context)`
  @protected
  final DeviceAppsTextThemeData textTheme;

  /// Should not be used directly.
  /// Please, use `DeviceAppsTheme.color(context)`
  @protected
  final DeviceAppsColorThemeData colorTheme;

  DeviceAppsThemeData({
    required this.themeData,
    required this.textTheme,
    required this.colorTheme,
  });
}
