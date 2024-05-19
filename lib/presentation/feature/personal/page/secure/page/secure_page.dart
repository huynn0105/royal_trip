import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/textfield.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/common/app_bar_list_view.dart';

@RoutePage()
class SecurePage extends StatelessWidget {
  const SecurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarListView(
        title: 'Security',
        children: [
          const _TitleDetail(
            title: 'New password',
            description: 'Set your new password',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            hintText: 'Old password',
            isPassword: true,
            suffixIcon: 'ic_eye',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            hintText: 'New password',
            isPassword: true,
            suffixIcon: 'ic_eye',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            hintText: 'Confirm password',
            isPassword: true,
            suffixIcon: 'ic_eye',
          ),
          const AppSizedBox.height16(),
          PrimaryButton(
            onPressed: () {},
            title: 'Change password',
            buttonColor: UIColors.defaultText,
          ),
          const AppSizedBox.height16(),
          const _TitleDetail(
            title: 'Email',
            description: 'Set your birthday. Only day and month will be visible',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: 'abc@gmail.com',
            hintText: 'Email',
          ),
          const AppSizedBox.height16(),
          PrimaryButton(
            onPressed: () {},
            title: 'Change email',
            buttonColor: UIColors.defaultText,
          ),
          const AppSizedBox.height(50),

        ],
      ),
    );
  }
}


class _TitleDetail extends StatelessWidget {
  const _TitleDetail({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: UITextStyles.semi(14),
        ),
        const AppSizedBox.height5(),
        Text(
          description,
          style: UITextStyles.regular(12),
        ),
      ],
    );
  }
}
