import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textfield.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/feature/auth/page/register_page.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const AppEdge.all16(),
          children: [
             AppSizedBox.height24(),
             Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppImage.asset(asset: 'logo'),
                  AppSizedBox.width14(),
                  const AppImage.asset(asset: 'brand'),
                ],
              ),
            ),
             AppSizedBox.height(40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign in',
                  style: UITextStyles.bold(24),
                ),
                Text(
                  'Welcome to RoyalTripVN. Sign up to get more benefit and discover...',
                  style: UITextStyles.regular(14),
                ),
              ],
            ),
             AppSizedBox.height24(),
            const UITextFieldOutline(
              hintText: 'Email',
              prefixIcon: 'ic_mail',
            ),
             AppSizedBox.height8(),
            const UITextFieldOutline(
              hintText: 'Password',
              isPassword: true,
              prefixIcon: 'ic_lock',
              suffixIcon: 'ic_eye',
            ),
             AppSizedBox.height8(),
            Align(
              alignment: Alignment.centerRight,
              child: SplashButton(
                child: Text(
                  'Forgot password?',
                  style: UITextStyles.bold(13).copyWith(
                    color: UIColors.blue,
                  ),
                ),
                onTap: () {},
              ),
            ),
             AppSizedBox.height24(),
            PrimaryButton(
              title: 'Sign in',
              textColor: UIColors.defaultText,
              onPressed: () {
                context.router.replaceAll([const TabMain()]);
              },
            ),
             AppSizedBox.height24(),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Other sign in',
                style: UITextStyles.regular(14),
              ),
            ),
             AppSizedBox.height24(),
            PrimaryButton(
              widget: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppImage.asset(asset: 'ic_facebook'),
                   AppSizedBox.width16(),
                  Text(
                    'Continue with Facebook',
                    style: UITextStyles.semi(14).copyWith(
                      color: UIColors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
              buttonColor: UIColors.blueFb,
            ),
             AppSizedBox.height12(),
            PrimaryButton(
              widget: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppImage.asset(asset: 'ic_google'),
                   AppSizedBox.width16(),
                  Text(
                    'Continue with Google',
                    style: UITextStyles.semi(14).copyWith(
                      color: UIColors.grayText,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
              buttonColor: UIColors.white,
              elevation: 5,
            ),
             AppSizedBox.height12(),
            PrimaryButton(
              widget: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppImage.asset(asset: 'ic_apple'),
                   AppSizedBox.width16(),
                  Text(
                    'Continue with Apple',
                    style: UITextStyles.semi(14).copyWith(
                      color: UIColors.white,
                    ),
                  ),
                ],
              ),
              buttonColor: UIColors.defaultText,
              onPressed: () {},
            ),
             AppSizedBox.height32(),

          ],
        ),
      ),
      bottomNavigationBar: TextBottomButton(
        title: 'I want to become member',
        onTap: (){
          context.router.back();
        },
      ),
    );
  }
}
