import 'package:injectable/injectable.dart';
import 'package:my_apps/data/repositories/apps_repository_imp.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';

@module
abstract class RepositoryModule {
  @lazySingleton
  AppsRepository appsRepository() => AppsRepositoryImp();
}
