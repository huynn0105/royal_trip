import 'package:get_it/get_it.dart';


import '../presentation/routes/routes.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppRouter>(AppRouter());
}
