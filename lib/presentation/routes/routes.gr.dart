// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:royal_trip/presentation/feature/auth/page/login_page.dart'
    deferred as _i5;
import 'package:royal_trip/presentation/feature/auth/page/register_page.dart'
    deferred as _i9;
import 'package:royal_trip/presentation/feature/cart/page/cart_page.dart'
    deferred as _i1;
import 'package:royal_trip/presentation/feature/cart/page/confirm_order/page/confirm_order_page.dart'
    deferred as _i2;
import 'package:royal_trip/presentation/feature/cart/page/order_successfully/page/order_successfully_page.dart'
    deferred as _i6;
import 'package:royal_trip/presentation/feature/home/page/home_page.dart'
    deferred as _i4;
import 'package:royal_trip/presentation/feature/personal/page/history/page/history_page.dart'
    deferred as _i3;
import 'package:royal_trip/presentation/feature/personal/page/personal_detail/page/personal_detail_page.dart'
    deferred as _i7;
import 'package:royal_trip/presentation/feature/personal/page/personal_page.dart'
    deferred as _i8;
import 'package:royal_trip/presentation/feature/personal/page/secure/page/secure_page.dart'
    deferred as _i10;
import 'package:royal_trip/presentation/feature/splash/page/splash_page.dart'
    deferred as _i11;
import 'package:royal_trip/presentation/feature/tab_main/tab_main.dart'
    deferred as _i12;
import 'package:royal_trip/presentation/feature/tour/page/tour_detail/page/tour_detail_page.dart'
    deferred as _i13;
import 'package:royal_trip/presentation/feature/tour/page/tour_page.dart'
    deferred as _i14;
import 'package:royal_trip/presentation/feature/welcome/page/welcome_page.dart'
    deferred as _i15;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.CartPage(),
        ),
      );
    },
    ConfirmOrderRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.ConfirmOrderPage(),
        ),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.HistoryPage(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.HomePage(),
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.LoginPage(),
        ),
      );
    },
    OrderSuccessfullyRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.OrderSuccessfullyPage(),
        ),
      );
    },
    PersonalDetailRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.PersonalDetailPage(),
        ),
      );
    },
    PersonalRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.PersonalPage(),
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.RegisterPage(),
        ),
      );
    },
    SecureRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.SecurePage(),
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.SplashPage(),
        ),
      );
    },
    TabMain.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.TabMain(),
        ),
      );
    },
    TourDetailRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.TourDetailPage(),
        ),
      );
    },
    TourRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i14.loadLibrary,
          () => _i14.TourPage(),
        ),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i15.loadLibrary,
          () => _i15.WelcomePage(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CartPage]
class CartRoute extends _i16.PageRouteInfo<void> {
  const CartRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ConfirmOrderPage]
class ConfirmOrderRoute extends _i16.PageRouteInfo<void> {
  const ConfirmOrderRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ConfirmOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmOrderRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HistoryPage]
class HistoryRoute extends _i16.PageRouteInfo<void> {
  const HistoryRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OrderSuccessfullyPage]
class OrderSuccessfullyRoute extends _i16.PageRouteInfo<void> {
  const OrderSuccessfullyRoute({List<_i16.PageRouteInfo>? children})
      : super(
          OrderSuccessfullyRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderSuccessfullyRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PersonalDetailPage]
class PersonalDetailRoute extends _i16.PageRouteInfo<void> {
  const PersonalDetailRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PersonalDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDetailRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PersonalPage]
class PersonalRoute extends _i16.PageRouteInfo<void> {
  const PersonalRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PersonalRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.RegisterPage]
class RegisterRoute extends _i16.PageRouteInfo<void> {
  const RegisterRoute({List<_i16.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SecurePage]
class SecureRoute extends _i16.PageRouteInfo<void> {
  const SecureRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SecureRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecureRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TabMain]
class TabMain extends _i16.PageRouteInfo<void> {
  const TabMain({List<_i16.PageRouteInfo>? children})
      : super(
          TabMain.name,
          initialChildren: children,
        );

  static const String name = 'TabMain';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.TourDetailPage]
class TourDetailRoute extends _i16.PageRouteInfo<void> {
  const TourDetailRoute({List<_i16.PageRouteInfo>? children})
      : super(
          TourDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'TourDetailRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.TourPage]
class TourRoute extends _i16.PageRouteInfo<void> {
  const TourRoute({List<_i16.PageRouteInfo>? children})
      : super(
          TourRoute.name,
          initialChildren: children,
        );

  static const String name = 'TourRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.WelcomePage]
class WelcomeRoute extends _i16.PageRouteInfo<void> {
  const WelcomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
