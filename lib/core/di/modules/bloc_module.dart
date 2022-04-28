import 'package:injectable/injectable.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';
import 'package:my_apps/presentation/blocs/apps/apps_bloc.dart';

@module
abstract class BlocModule {
  @factoryMethod
  AppsBloc appsBloc(AppsRepository appsRepository) =>
      AppsBloc(appsRepository: appsRepository);
}
