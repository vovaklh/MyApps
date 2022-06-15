import 'package:flutter/material.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/core/utils/extensions/build_context_ext.dart';
import 'package:my_apps/data/datasources/local/shared_prefs.dart';
import 'package:my_apps/l10n/app_locale.dart';
import 'package:my_apps/l10n/locale_manager.dart';
import 'package:my_apps/presentation/themes/theme_manager.dart';

class SettingsDialog extends StatefulWidget {
  const SettingsDialog({super.key});

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  var themeMode = locator<SharedPrefs>().getThemeMode() ?? ThemeMode.light;
  var locale = locator<SharedPrefs>().getLocale() ?? AppLocale.en;

  void _onLanguageChanged(AppLocale? selectedLocale) {
    if (selectedLocale != null) {
      setState(() => locale = selectedLocale);
      LocaleManager.setLocaleAction(context, locale);
    }
  }

  void _onThemeChanged(bool value) {
    setState(() => themeMode = value ? ThemeMode.dark : ThemeMode.light);
    ThemeManager.switchTheme(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.localizations.settings),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildThemeSettings(),
          const SizedBox(height: 10),
          _buildLanguageSettings(),
        ],
      ),
    );
  }

  Widget _buildThemeSettings() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(context.localizations.darkMode),
        Switch(
          value: themeMode == ThemeMode.dark,
          onChanged: _onThemeChanged,
        ),
      ],
    );
  }

  Widget _buildLanguageSettings() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(context.localizations.language),
        DropdownButton<AppLocale>(
          value: locale,
          onChanged: _onLanguageChanged,
          items: AppLocale.values
              .map((locale) => DropdownMenuItem(
                    value: locale,
                    child: Text(locale.toLanguage(context)),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
