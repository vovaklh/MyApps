import 'package:device_apps/presentation/themes/adaptive_theme/adaptive_theme_manager.dart';
import 'package:device_apps/presentation/themes/adaptive_theme/adaptive_theme_mode.dart';
import 'package:device_apps/presentation/themes/device_apps_theme.dart';
import 'package:flutter/material.dart';

class AdaptiveTheme extends StatefulWidget {
  final DeviceAppsThemeData lightTheme;
  final DeviceAppsThemeData darkTheme;
  final Widget child;

  const AdaptiveTheme({
    required this.lightTheme,
    required this.darkTheme,
    required this.child,
    Key? key,
  }) : super(key: key);

  static AdaptiveThemeManager of(BuildContext context) =>
      context.findAncestorStateOfType<State<AdaptiveTheme>>()!
          as AdaptiveThemeManager;

  @override
  State<AdaptiveTheme> createState() => _AdaptiveThemeState();
}

class _AdaptiveThemeState extends State<AdaptiveTheme>
    implements AdaptiveThemeManager {
  late AdaptiveThemeMode _mode;
  late DeviceAppsThemeData _theme;

  @override
  AdaptiveThemeMode get mode => _mode;

  @override
  void setDark() {
    setState(() {
      _mode = AdaptiveThemeMode.dark;
      _theme = widget.darkTheme;
    });
  }

  @override
  void setLight() {
    setState(() {
      _mode = AdaptiveThemeMode.light;
      _theme = widget.lightTheme;
    });
  }

  @override
  void setThemeMode(AdaptiveThemeMode mode) {
    switch (mode) {
      case AdaptiveThemeMode.light:
        setLight();
        break;
      case AdaptiveThemeMode.dark:
        setDark();
        break;
    }
  }

  @override
  void switchTheme() {
    switch (_mode) {
      case AdaptiveThemeMode.light:
        setDark();
        break;
      case AdaptiveThemeMode.dark:
        setLight();
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _mode = AdaptiveThemeMode.light;
    _theme = widget.lightTheme;
  }

  @override
  Widget build(BuildContext context) {
    return DeviceAppsTheme(
      theme: _theme,
      child: widget.child,
    );
  }
}
