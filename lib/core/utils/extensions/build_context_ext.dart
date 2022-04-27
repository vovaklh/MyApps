import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_apps/presentation/themes/app_theme.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;

  AppTextThemeData get text => AppTheme.text(this);

  AppColorThemeData get color => AppTheme.color(this);
}
