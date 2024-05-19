import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/textfield.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/common/app_bar_list_view.dart';

part 'widgets/title_detail.dart';

@RoutePage()
class PersonalDetailPage extends StatelessWidget {
  const PersonalDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarListView(
        title: 'Personal Detaill',
        children: [
          _TitleDetail(
            title: 'Your profile',
            description: 'Set your birthday. Only day and month will be visible',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: 'Khai',
            hintText: 'First name',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: 'Pham',
            hintText: 'Last name',
          ),
          const AppSizedBox.height16(),
          _TitleDetail(
            title: 'Birthday',
            description: 'Set your birthday. Only day and month will be visible',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: 'February',
            hintText: 'Month',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: '18',
            hintText: 'Day',
          ),
          const AppSizedBox.height16(),
          _TitleDetail(
            title: 'Location',
            description: 'Set your current location',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: 'Ho Chi Minh City',
            hintText: 'Location',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: 'Vietnam',
            hintText: 'Country',
          ),
          const AppSizedBox.height12(),
          const UITextFieldOutline(
            initialValue: '24 Phan Tay Ho, Phu Nhuan district',
            hintText: 'City',
          ),
          const AppSizedBox.height16(),
          PrimaryButton(
            onPressed: () {},
            title: 'Save',
            buttonColor: UIColors.defaultText,
          ),
          const AppSizedBox.height(50),
        ],
      ),
    );
  }
}
