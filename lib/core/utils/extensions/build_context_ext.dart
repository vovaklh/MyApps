import 'package:device_apps/presentation/themes/device_apps_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;

  DeviceAppsTextThemeData get text => DeviceAppsTheme.text(this);

  DeviceAppsColorThemeData get color => DeviceAppsTheme.color(this);
}
