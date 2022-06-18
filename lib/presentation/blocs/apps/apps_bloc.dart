import 'dart:async';

import 'package:device_apps/device_apps.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_apps/domain/repositories/apps_repository.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';
import 'package:my_apps/presentation/sort/sort_method.dart';

part 'apps_event.dart';
part 'apps_state.dart';
part 'apps_bloc.freezed.dart';

class AppsBloc extends Bloc<AppsEvent, AppsState> {
  final AppsRepository appsRepository;

  late final StreamSubscription<ApplicationEvent> appChangesStreamSubscription;

  AppsBloc({required this.appsRepository}) : super(const AppsState.initial()) {
    on<GetAppsEvent>((_, emit) => _getApps(emit));
    on<SearchEvent>((event, emit) => _search(event.query, emit));
    on<SortEvent>(
      (event, emit) => _sort(event.sortMethod, emit),
    );
    on<AppUninstalledEvent>(
      (event, emit) => _uninstalled(event.packageName, emit),
    );

    appChangesStreamSubscription =
        appsRepository.appChangesStream.listen((event) {
      if (event is ApplicationEventUninstalled) {
        add(AppUninstalledEvent(event.packageName));
      }
    });
  }

  Future<void> _getApps(Emitter emit) async {
    try {
      emit(const AppsState.loading());

      final installedApps = await appsRepository.getInstalledApps();
      final systemApps = await appsRepository.getSystemApps();

      emit(AppsState.success(installedApps.toList(), systemApps.toList()));
    } catch (exception) {
      emit(AppsState.error(exception));
    }
  }

  Future<void> _search(String query, Emitter emit) async {
    try {
      final installedApps = await appsRepository.getInstalledApps();
      final systemApps = await appsRepository.getSystemApps();

      final filteredInstalledApps = installedApps
          .where((wrapper) => wrapper.application.appName
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
      final filteredSystemApps = systemApps
          .where((wrapper) => wrapper.application.appName
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();

      emit(AppsState.success(filteredInstalledApps, filteredSystemApps));
    } catch (exception) {
      emit(AppsState.error(exception));
    }
  }

  Future<void> _sort(SortMethod sortMethod, Emitter emit) async {
    try {
      final List<ApplicationWrapper> displayedInstalledApps =
          _getDisplayedIntsalledApps();
      final List<ApplicationWrapper> displayedSystemApps =
          _getDisplayedSystemApps();

      final sortedInstalledApps = sortMethod.sort(displayedInstalledApps);
      final sortedSystemApps = sortMethod.sort(displayedSystemApps);

      emit(AppsState.success(sortedInstalledApps, sortedSystemApps));
    } catch (exception) {
      emit(AppsState.error(exception));
    }
  }

  Future<void> _uninstalled(String packageName, Emitter<AppsState> emit) async {
    try {
      appsRepository.onAppUninstalled(packageName);

      final List<ApplicationWrapper> displayedInstalledApps =
          _getDisplayedIntsalledApps();
      final List<ApplicationWrapper> displayedSystemApps =
          _getDisplayedSystemApps();

      final filteredInstalledApps = displayedInstalledApps.toList()
        ..removeWhere(
          (wrapper) => wrapper.application.packageName == packageName,
        );
      final filteredSystemApps = displayedSystemApps.toList()
        ..removeWhere(
          (wrapper) => wrapper.application.packageName == packageName,
        );

      emit(AppsState.success(filteredInstalledApps, filteredSystemApps));
    } catch (exception) {
      emit(AppsState.error(exception));
    }
  }

  List<ApplicationWrapper> _getDisplayedIntsalledApps() {
    return state.maybeMap(
      success: ((value) => value.installedApps),
      orElse: () => [],
    );
  }

  List<ApplicationWrapper> _getDisplayedSystemApps() {
    return state.maybeMap(
      success: ((value) => value.systemApps),
      orElse: () => [],
    );
  }
}
