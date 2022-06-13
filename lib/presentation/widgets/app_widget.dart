import 'package:flutter/material.dart';
import 'package:my_apps/core/utils/extensions/build_context_ext.dart';
import 'package:my_apps/core/utils/extensions/date_time_ext.dart';
import 'package:my_apps/core/utils/extensions/int_ext.dart';
import 'package:my_apps/core/utils/extensions/string_ext.dart';
import 'package:my_apps/domain/wrappers/application_wrapper.dart';

class AppWidget extends StatelessWidget {
  final ApplicationWrapper wrapper;
  final Function(ApplicationWrapper) onTap;

  const AppWidget({
    required this.wrapper,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(wrapper),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: context.color.appContainerBackground,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: context.color.appContainerShadow,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.memory(
              wrapper.application.icon,
              width: 60,
              height: 60,
            ),
            const SizedBox(width: 20),
            _buildAppInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAppInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          wrapper.application.appName,
          style: context.text.appTitle,
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              wrapper.application.versionName.toString().maxLength(10),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: context.text.appDescription,
            ),
            const SizedBox(width: 20),
            Text(
              '${wrapper.size.toMegabytes().toStringAsFixed(2)} ${context.localizations.megabytes}',
              style: context.text.appDescription,
            ),
            const SizedBox(width: 20),
            Text(
              DateTime.fromMillisecondsSinceEpoch(
                wrapper.application.installTimeMillis,
              ).formattedDate,
              style: context.text.appDescription,
            ),
          ],
        ),
      ],
    );
  }
}
