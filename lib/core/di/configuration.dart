import 'package:injectable/injectable.dart';
import 'package:my_apps/core/di/configuration.config.dart';
import 'package:my_apps/core/di/locator.dart';

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $configureDependencies(locator);
