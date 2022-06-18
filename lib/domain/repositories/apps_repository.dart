import 'package:device_apps/device_apps.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';

abstract class AppsRepository {
  Stream<ApplicationEvent> get appChangesStream;

  Future<List<ApplicationWrapper>> getSystemApps();

  Future<List<ApplicationWrapper>> getInstalledApps();

  void onAppUninstalled(String packageName);
}
