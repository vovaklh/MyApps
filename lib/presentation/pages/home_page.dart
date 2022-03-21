import 'package:flutter/material.dart';
import 'package:device_apps/presentation/themes/adaptive_theme/adaptive_theme.dart';
import 'package:device_apps/core/utils/extensions/build_context_ext.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _changeTheme(BuildContext context) {
    AdaptiveTheme.of(context).switchTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 50,
          color: context.color.test,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _changeTheme(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
