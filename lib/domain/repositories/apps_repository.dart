import 'package:device_apps/device_apps.dart';

abstract class AppsRepository {
  Future<List<Application>> getSystemApps();

  Future<List<Application>> getInstalledApps();
}
