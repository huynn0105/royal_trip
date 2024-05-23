import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:royal_trip/di/locator.dart';
import 'package:royal_trip/presentation/routes/routes.dart';

import 'presentation/common/colors.dart';

int runAppMarker = 0;
void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    runAppMarker += 1;
    debugPrint("runAppMarker: $runAppMarker");
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            title: 'Royal Trip',
            debugShowCheckedModeBanner: false,
            routerConfig: locator<AppRouter>().config(),
            theme: Theme.of(context).copyWith(
              scaffoldBackgroundColor: UIColors.backgroundColor,
            ),
          );
        });
  }
}
