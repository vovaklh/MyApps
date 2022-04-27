import 'package:injectable/injectable.dart';
import 'package:my_apps/data/datasources/local/shared_prefs.dart';

@module
abstract class StorageModule {
  @lazySingleton
  @preResolve
  Future<SharedPrefs> sharedPrefs() async {
    final sharedPreferences = SharedPrefs();
    await sharedPreferences.init();

    return sharedPreferences;
  }
}
