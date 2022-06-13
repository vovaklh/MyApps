import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/core/utils/extensions/build_context_ext.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';
import 'package:my_apps/presentation/blocs/apps/apps_bloc.dart';
import 'package:my_apps/presentation/widgets/app_widget.dart';
import 'package:my_apps/presentation/widgets/loader.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const int _pages = 2;

  final _bloc = locator<AppsBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetAppsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.localizations.myApps,
            style: context.text.appBarTitle,
          ),
          bottom: TabBar(
            isScrollable: true,
            labelPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelColor: context.color.selectedLabel,
            unselectedLabelColor: context.color.unselectedLabel,
            labelStyle: context.text.labelStyle,
            tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.download_rounded),
                  const SizedBox(width: 10),
                  Text(context.localizations.installedApps.toUpperCase()),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.apps),
                  const SizedBox(width: 10),
                  Text(context.localizations.systemApps.toUpperCase()),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocBuilder<AppsBloc, AppsState>(
              bloc: _bloc,
              builder: (_, state) {
                return state.maybeWhen(
                  success: (installedApps, systemApps) =>
                      _buildApps(installedApps),
                  orElse: () => const Loader(),
                );
              },
            ),
            BlocBuilder<AppsBloc, AppsState>(
              bloc: _bloc,
              builder: (_, state) {
                return state.maybeWhen(
                  success: (installedApps, systemApps) =>
                      _buildApps(systemApps),
                  orElse: () => const Loader(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildApps(List<ApplicationWrapper> wrappers) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      itemBuilder: (_, int index) => AppWidget(
        wrapper: wrappers[index],
        onTap: (wrapper) => DeviceApps.openApp(wrapper.application.packageName),
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemCount: wrappers.length,
    );
  }
}
