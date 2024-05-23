import 'package:auto_route/annotations.dart';
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
class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const AppEdge.all16(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               AppSizedBox.height(52),
              const CircleAvatar(
                radius: 45,
                child: FlutterLogo(),
              ),
               AppSizedBox.height8(),
              Text(
                'My Name',
                style: UITextStyles.medium(18),
              ),
              Text(
                '300 points',
                style: UITextStyles.regular(14).copyWith(
                  color: UIColors.subText,
                ),
              ),
               AppSizedBox.height(52),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  final item = PersonalEnum.values[index];
                  return AppSplashButton(
                    onTap: (){
                      switch(item){
                        case PersonalEnum.personalDetail:
                          context.router.push(const PersonalDetailRoute());
                          break;
                        case PersonalEnum.notification:
                          // TODO: Handle this case.
                        case PersonalEnum.history:
                        context.router.push(const HistoryRoute());
                        break;
                        case PersonalEnum.security:
                        context.router.push(const SecureRoute());
                        break;
                        case PersonalEnum.privacy:
                          // TODO: Handle this case.
                        case PersonalEnum.about:
                          // TODO: Handle this case.
                      }
                    },
                    child: _PersonalItem(item: item),
                  );
                },
                separatorBuilder: (_, __) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: UIColors.divider,
                ),
                itemCount: PersonalEnum.values.length,
              ),
              const Spacer(),
              _Logout(),
               AppSizedBox.height32(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PersonalItem extends StatelessWidget {
  const _PersonalItem({
    super.key,
    required this.item,
  });

  final PersonalEnum item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppEdge.vertical16(),
      child: Row(
        children: [
          AppImage.asset(
            asset: item.icon,
            width: 20,
            height: 20,
          ),
           AppSizedBox.width8(),
          Expanded(
            child: Text(
              item.title,
              style: UITextStyles.regular(16),
            ),
          ),
          const AppImage.asset(
            asset: 'ic_next',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}

class _Logout extends StatelessWidget {
  const _Logout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SplashButton(
      onTap: (){
        context.router.pushAndPopUntil(RegisterRoute(), predicate: (_)=> false,);
      },
      child: Text(
        'Log out',
        style: UITextStyles.bold(15).copyWith(
          color: UIColors.red,
        ),
      ),
    );
  }
}

enum PersonalEnum {
  personalDetail(title: 'Personal details', icon: 'ic_personal_card'),
  notification(title: 'Notification', icon: 'ic_noti'),
  history(title: 'History', icon: 'ic_history'),
  security(title: 'Security', icon: 'ic_secure'),
  privacy(title: 'Privacy', icon: 'ic_privacy'),
  about(title: 'About us', icon: 'ic_about');

  final String title;
  final String icon;
  const PersonalEnum({
    required this.title,
    required this.icon,
  });
}
