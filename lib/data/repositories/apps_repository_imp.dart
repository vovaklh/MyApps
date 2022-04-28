import 'package:device_apps/device_apps.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';

class AppsRepositoryImp implements AppsRepository {
  final List<Application> _installedApps = [];
  final List<Application> _systemApps = [];

  final Stream<ApplicationEvent> appChangesStream =
      DeviceApps.listenToAppsChanges();

  @override
  Future<List<Application>> getSystemApps() async {
    if (_systemApps.isEmpty) {
      final apps = await DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: true,
        onlyAppsWithLaunchIntent: true,
      );
      final systemApps = apps.where((app) => app.systemApp).toList();
      _systemApps.addAll(systemApps);

      return systemApps;
    }

    return _systemApps;
  }

  @override
  Future<List<Application>> getInstalledApps() async {
    if (_installedApps.isEmpty) {
      final installedApps = await DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: false,
        onlyAppsWithLaunchIntent: true,
      );

      _installedApps.addAll(installedApps);

      return installedApps;
    }

    return _installedApps;
  }

  Future<void> reload() async {
    _installedApps.clear();
    _systemApps.clear();

    await getSystemApps();
    await getSystemApps();
  }
}
