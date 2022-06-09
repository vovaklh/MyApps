import 'dart:io';

import 'package:device_apps/device_apps.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';

class AppsRepositoryImp implements AppsRepository {
  final List<ApplicationWrapper> _installedApps = [];
  final List<ApplicationWrapper> _systemApps = [];

  final Stream<ApplicationEvent> appChangesStream =
      DeviceApps.listenToAppsChanges();

  @override
  Future<List<ApplicationWrapper>> getSystemApps() async {
    if (_systemApps.isEmpty) {
      final apps = await DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: true,
        onlyAppsWithLaunchIntent: true,
      );
      final systemApps = apps.where((app) => app.systemApp).toList();
      _systemApps.addAll(systemApps.toWrappers());

      return _systemApps;
    }

    return _systemApps;
  }

  @override
  Future<List<ApplicationWrapper>> getInstalledApps() async {
    if (_installedApps.isEmpty) {
      final installedApps = await DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: false,
        onlyAppsWithLaunchIntent: true,
      );

      _installedApps.addAll(installedApps.toWrappers());

      return _installedApps;
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

extension ApplicationExt on List<Application> {
  List<ApplicationWrapper> toWrappers() {
    return map((app) => ApplicationWrapper(
          application: app,
          size: File(app.apkFilePath).lengthSync(),
        )).toList();
  }
}
