import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';
import 'package:device_apps/device_apps.dart';

part 'apps_event.dart';
part 'apps_state.dart';
part 'apps_bloc.freezed.dart';

class AppsBloc extends Bloc<AppsEvent, AppsState> {
  final AppsRepository appsRepository;

  AppsBloc({required this.appsRepository}) : super(const AppsState.initial()) {
    on<GetAppsEvent>((_, emit) => _getApps(emit));
  }

  Future<void> _getApps(Emitter emit) async {
    try {
      emit(const AppsState.loading());

      final installedApps = await appsRepository.getInstalledApps();
      final systemApps = await appsRepository.getSystemApps();

      emit(AppsState.success(installedApps, systemApps));
    } catch (exception) {
      emit(AppsState.error(exception));
    }
  }
}
