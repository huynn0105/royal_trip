import 'package:auto_route/auto_route.dart';
import 'package:royal_trip/presentation/routes/route_path.dart';

import 'routes.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    // AutoRoute(
    //   page: SplashRoute.page,
    //   guards: const [],
    //   path: RoutePath.rootPath,
    //   children: const [],
    //   initial: true,
    // ),
    AutoRoute(
      page: WelcomeRoute.page,
      path: RoutePath.welcome,
      initial: true,
    ),

    AutoRoute(
      page: TabMain.page,
      path: RoutePath.main,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: TourRoute.page),
        AutoRoute(page: CartRoute.page),
        AutoRoute(page: PersonalRoute.page),
      ],
    ),

    AutoRoute(
      page: HomeRoute.page,
      path: RoutePath.home,
    ),

    AutoRoute(
      page: LoginRoute.page,
      path: RoutePath.login,
    ),
    AutoRoute(
      page: RegisterRoute.page,
      path: RoutePath.register,
    ),

    AutoRoute(
      page: PersonalDetailRoute.page,
      path: RoutePath.personalDetail,
    ),
    AutoRoute(
      page: SecureRoute.page,
      path: RoutePath.secure,
    ),
    AutoRoute(
      page: HistoryRoute.page,
      path: RoutePath.history,
    ),
    AutoRoute(
      page: CartRoute.page,
      path: RoutePath.cart,
    ),
    AutoRoute(
      page: ConfirmOrderRoute.page,
      path: RoutePath.confirmOrder,
    ),
    AutoRoute(
      page: OrderSuccessfullyRoute.page,
      path: RoutePath.orderSuccessfully,
    ),
    AutoRoute(
      page: TourRoute.page,
      path: RoutePath.tour,
    ),
    AutoRoute(
      page: TourDetailRoute.page,
      path: RoutePath.tourDetail,
    ),
  ];
}
