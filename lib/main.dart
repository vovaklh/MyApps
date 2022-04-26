import 'package:device_apps/core/di/configuration.dart';
import 'package:device_apps/presentation/redux/store.dart';
import 'package:device_apps/presentation/redux/theme/actions/init_theme_action.dart';
import 'package:flutter/material.dart';
import 'package:device_apps/core/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  final store = newStore();
  store.dispatch(InitThemeAction());
  runApp(Application(store: store));
}
