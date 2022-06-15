import 'package:my_apps/domain/wrappers/application_wrapper.dart';

abstract class AppSort {}

class AppSortByName implements AppSort {
  static List<ApplicationWrapper> sort(List<ApplicationWrapper> apps) {
    return apps.toList()
      ..sort((firstApp, secondApp) => firstApp.application.appName
          .compareTo(secondApp.application.appName));
  }
}

class AppSortBySize implements AppSort {
  static List<ApplicationWrapper> sort(List<ApplicationWrapper> apps) {
    return apps.toList()
      ..sort((firstApp, secondApp) => secondApp.size.compareTo(firstApp.size));
  }
}

class AppSortByInstallationDate implements AppSort {
  static List<ApplicationWrapper> sort(List<ApplicationWrapper> apps) {
    return apps.toList()
      ..sort((firstApp, secondApp) => secondApp.application.installTimeMillis
          .compareTo(firstApp.application.installTimeMillis));
  }
}
