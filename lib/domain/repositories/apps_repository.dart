import 'package:my_apps/domain/wrappers/application_wrapper.dart';

abstract class AppsRepository {
  Future<List<ApplicationWrapper>> getSystemApps();

  Future<List<ApplicationWrapper>> getInstalledApps();
}
