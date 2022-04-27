import 'package:flutter/material.dart';
import 'package:my_apps/core/application.dart';
import 'package:my_apps/core/di/configuration.dart';
import 'package:my_apps/presentation/redux/locale/actions/init_locale_action.dart';
import 'package:my_apps/presentation/redux/store.dart';
import 'package:my_apps/presentation/redux/theme/actions/init_theme_action.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  final store = newStore();
  store.dispatch(InitThemeAction());
  store.dispatch(InitLocaleAction());
  runApp(Application(store: store));
}
