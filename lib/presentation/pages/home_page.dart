import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/core/utils/extensions/build_context_ext.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';
import 'package:my_apps/presentation/blocs/apps/apps_bloc.dart';
import 'package:my_apps/presentation/sort/sort_method.dart';
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

  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetAppsEvent());
  }

  void _onSearch(String query) => _bloc.add(SearchEvent(query));

  void _onSearchOpen() => setState(() => _isSearching = true);

  void _onSearchClose() {
    setState(() {
      _isSearching = false;
    });
    _bloc.add(const GetAppsEvent());
  }

  void _onSort(SortMethod sortMethod) => _bloc.add(SortEvent(sortMethod));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages,
      child: Scaffold(
        appBar: AppBar(
          title: _buildTitle(),
          leading: _buildLeading(),
          actions: _buildActions(),
          bottom: _buildBottom(),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildLeading() {
    if (_isSearching) {
      return IconButton(
        icon: const Icon(Icons.close),
        onPressed: _onSearchClose,
      );
    }
    return const SizedBox();
  }

  Widget _buildTitle() {
    if (_isSearching) {
      return TextField(
        decoration: InputDecoration(
          hintText: context.localizations.searchHint,
          hintStyle: context.text.searchHint,
          border: InputBorder.none,
        ),
        autofocus: true,
        cursorColor: context.color.coursorColor,
        style: context.text.searchInput,
        onChanged: _onSearch,
      );
    }
    return Text(
      context.localizations.myApps,
      style: context.text.appBarTitle,
    );
  }

  List<Widget> _buildActions() {
    return [
      if (!_isSearching)
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: _onSearchOpen,
        ),
      _buildPopupMenu(),
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {},
      ),
    ];
  }

  Widget _buildPopupMenu() {
    return PopupMenuButton<SortMethod>(
      icon: const Icon(Icons.sort),
      onSelected: _onSort,
      itemBuilder: (_) => [
        PopupMenuItem(
          value: SortMethod.name,
          child: Text(context.localizations.sortByName),
        ),
        PopupMenuItem(
          value: SortMethod.size,
          child: Text(context.localizations.sortBySize),
        ),
        PopupMenuItem(
          value: SortMethod.installationDate,
          child: Text(context.localizations.sortByDate),
        ),
      ],
    );
  }

  PreferredSizeWidget _buildBottom() {
    return TabBar(
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
    );
  }

  Widget _buildBody() {
    return TabBarView(
      children: [
        BlocBuilder<AppsBloc, AppsState>(
          bloc: _bloc,
          builder: (_, state) {
            return state.maybeWhen(
              success: (installedApps, systemApps) => _buildApps(installedApps),
              orElse: () => const Loader(),
            );
          },
        ),
        BlocBuilder<AppsBloc, AppsState>(
          bloc: _bloc,
          builder: (_, state) {
            return state.maybeWhen(
              success: (installedApps, systemApps) => _buildApps(systemApps),
              orElse: () => const Loader(),
            );
          },
        ),
      ],
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
