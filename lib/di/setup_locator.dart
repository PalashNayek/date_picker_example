import 'package:get_it/get_it.dart';

import '../view_models/date_picker_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<DatePickerViewModel>(() => DatePickerViewModel());
}
