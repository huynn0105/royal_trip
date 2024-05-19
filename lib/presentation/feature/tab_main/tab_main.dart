import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';

@RoutePage()
class TabMain extends StatelessWidget {
  const TabMain({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: [
          HomeRoute(),
          TourRoute(),
          CartRoute(),
          PersonalRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: SafeArea(
              child: Container(
                height: 80,
                padding: const AppEdge.all16(),
                decoration: BoxDecoration(
                  color: UIColors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, -2),
                      spreadRadius: 0,
                      blurRadius: 40,
                      color: UIColors.defaultText.withOpacity(0.12),
                    )
                  ],
                ),
                child: Row(
                  children: NavigationEnum.values
                      .map(
                        (e) => Expanded(
                      child: _NavigationItem(
                        title: e.title,
                        icon: e.icon,
                        active: tabsRouter.activeIndex == e.index,
                        onTap: () {
                          tabsRouter.setActiveIndex(e.index);
                        },
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
          );
        });
  }
}



enum NavigationEnum {
  home(title: 'Home', icon: 'ic_home_active'),
  name(title: 'Name', icon: 'ic_box'),
  name1(title: 'Name 1', icon: 'ic_box'),
  personal(title: 'Account', icon: 'ic_personal');

  final String title;
  final String icon;
  const NavigationEnum({
    required this.title,
    required this.icon,
  });
}

class _NavigationItem extends StatelessWidget {
  const _NavigationItem({
    super.key,
    required this.title,
    required this.icon,
    required this.active,
    required this.onTap,
  });
  final String title;
  final String icon;
  final bool active;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? UIColors.primaryColor : UIColors.grayText;
    return AppSplashButton(
      onTap: onTap,
      child: Column(
        children: [
          AppImage.asset(
            asset: icon,
            color: color,
            width: 24,
            height: 24,
          ),
          AppSizedBox.height5(),
          Text(
            title,
            style: UITextStyles.medium(10).copyWith(
              color: color,
              fontWeight: active ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
