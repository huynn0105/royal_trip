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
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const AppEdge.all16(),
          child: Column(
            children: [
              const AppSizedBox.height(30),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppImage.asset(asset: 'logo'),
                  AppSizedBox.width14(),
                  AppImage.asset(asset: 'brand'),
                ],
              ),
              const Padding(
                padding: AppEdge.all24(),
                child: AppImage.asset(asset: 'welcome'),
              ),
              Text(
                'Welcome to RoyalTripVN',
                style: UITextStyles.bold(16),
              ),
              const AppSizedBox.height5(),
              Text(
                'Welcome to RoyalTripVN',
                style: UITextStyles.regular(14),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const AppEdge.all16(),
        child: PrimaryButton(
          title: 'Continue',
          textColor: UIColors.defaultText,
          onPressed: () {
            context.router.push(const RegisterRoute());
          },
        ),
      ),
    );
  }
}
