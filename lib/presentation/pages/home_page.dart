import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/presentation/blocs/apps/apps_bloc.dart';
import 'package:my_apps/presentation/widgets/loader.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

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
          title: Text(widget.title),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Installed apps',
              ),
              Tab(text: 'System apps'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocBuilder<AppsBloc, AppsState>(
              bloc: _bloc,
              builder: (_, state) {
                return state.maybeWhen(
                  success: (installedApps, systemApps) => Text(
                    installedApps.length.toString(),
                  ),
                  orElse: () => const Loader(),
                );
              },
            ),
            BlocBuilder<AppsBloc, AppsState>(
              bloc: _bloc,
              builder: (_, state) {
                return state.maybeWhen(
                  success: (installedApps, systemApps) => Text(
                    systemApps.length.toString(),
                  ),
                  orElse: () => const Loader(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
