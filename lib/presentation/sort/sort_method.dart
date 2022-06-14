import 'package:my_apps/domain/wrappers/application_wrapper.dart';
import 'package:my_apps/presentation/sort/app_sort.dart';

enum SortMethod {
  name(AppSortByName.sort),
  size(AppSortBySize.sort),
  installationDate(AppSortByInstallationDate.sort);

  final List<ApplicationWrapper> Function(List<ApplicationWrapper>) sort;

  const SortMethod(this.sort);
}
