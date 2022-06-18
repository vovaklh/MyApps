import 'dart:io';

import 'package:device_apps/device_apps.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';

class AppsRepositoryImp implements AppsRepository {
  final List<ApplicationWrapper> _installedApps = [];
  final List<ApplicationWrapper> _systemApps = [];

  @override
  Stream<ApplicationEvent> get appChangesStream =>
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
      final castedList = systemApps.cast<ApplicationWithIcon>();

      _systemApps.addAll(castedList.toWrappers());

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

      final castedList = installedApps.cast<ApplicationWithIcon>();
      _installedApps.addAll(castedList.toWrappers());

      return _installedApps;
    }

    return _installedApps;
  }

  @override
  void onAppUninstalled(String packageName) {
    _installedApps.removeWhere(
      (wrapper) => wrapper.application.packageName == packageName,
    );
    _systemApps.removeWhere(
      (wrapper) => wrapper.application.packageName == packageName,
    );
  }
}

extension ApplicationExt on List<ApplicationWithIcon> {
  List<ApplicationWrapper> toWrappers() {
    return map((app) => ApplicationWrapper(
          application: app,
          size: File(app.apkFilePath).lengthSync(),
        )).toList();
  }
}
