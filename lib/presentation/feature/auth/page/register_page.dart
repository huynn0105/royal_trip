import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textfield.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              child:  Row(
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
                  'Sign up',
                  style: UITextStyles.bold(24),
                ),
                Text(
                  'Welcome to RoyalTripVN. Let become member get more benefit and discover...',
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
            const UITextFieldOutline(
              hintText: 'Confirm Password',
              isPassword: true,
              prefixIcon: 'ic_lock',
              suffixIcon: 'ic_eye',
            ),
             AppSizedBox.height24(),
            PrimaryButton(
              title: 'Create account',
              textColor: UIColors.defaultText,
              onPressed: () {
                context.router.push(const LoginRoute());
              },
            ),
             AppSizedBox.height32(),
          ],
        ),
      ),
      bottomNavigationBar: TextBottomButton(
        title: 'You have already account?',
        onTap: (){
          context.router.push(const LoginRoute());
        },
      ),
    );
  }
}

class TextBottomButton extends StatelessWidget {
  const TextBottomButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppEdge.all24(),
      child: SplashButton(
        onTap:onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: UITextStyles.bold(13).copyWith(
                color: UIColors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
