import 'package:get_it/get_it.dart';

import 'model/login_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => LoginModel());
}
