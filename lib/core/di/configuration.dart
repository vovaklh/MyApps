import 'package:device_apps/core/di/configuration.config.dart';
import 'package:device_apps/core/di/locator.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $configureDependencies(locator);
