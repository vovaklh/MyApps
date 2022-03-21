import 'package:flutter/material.dart';

part 'theme/device_apps_color_theme_data.dart';
part 'theme/device_apps_text_theme_data.dart';
part 'theme/device_apps_theme_data.dart';

class DeviceAppsTheme extends InheritedWidget {
  final DeviceAppsThemeData theme;

  const DeviceAppsTheme({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  static DeviceAppsThemeData of(BuildContext context) => maybeOf(context)!;

  static DeviceAppsThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DeviceAppsTheme>()?.theme;
  }

  static DeviceAppsTextThemeData text(BuildContext context) =>
      of(context).textTheme;
  static DeviceAppsColorThemeData color(BuildContext context) =>
      of(context).colorTheme;

  @override
  bool updateShouldNotify(DeviceAppsTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
