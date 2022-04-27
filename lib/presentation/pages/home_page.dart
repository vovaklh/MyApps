import 'package:flutter/material.dart';
import 'package:my_apps/core/utils/extensions/build_context_ext.dart';
import 'package:my_apps/l10n/locale_manager.dart';
import 'package:my_apps/presentation/themes/adaptive_theme/adaptive_theme.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _changeTheme() {
    AdaptiveTheme.switchTheme(context);
  }

  void _setRuLocale() {
    LocaleManager.setRuLocale(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: _changeTheme,
            child: Text(context.localizations.switchTheme),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: _setRuLocale,
            child: Text(context.localizations.switchLang),
          ),
        ],
      ),
    );
  }
}
