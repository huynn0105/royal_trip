import 'package:auto_route/auto_route.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';
part 'widgets/card.dart';
part 'widgets/divider.dart';

@RoutePage()
class OrderSuccessfullyPage extends StatelessWidget {
  const OrderSuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const AppSizedBox.height32(),
            Text(
              'Thanks you for order',
              style: UITextStyles.bold(18),
            ),
            const AppSizedBox.height8(),
            Text(
              'We have sent a order to your email',
              style: UITextStyles.regular(14).copyWith(
                color: UIColors.subText,
              ),
            ),
            const AppSizedBox.height8(),
            Text(
              'abc@gmail.com',
              style: UITextStyles.regular(14).copyWith(
                color: UIColors.subText,
              ),
            ),
            const AppSizedBox.height32(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: UIColors.backgroundColor,
              ),
              child: const Column(
                children: [
                  _CardTitle(),
                  _Divider(),
                  _CardContent(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: const AppEdge.all16(),
        child: _BackToHome(),
      ),
    );
  }
}

class _BackToHome extends StatelessWidget {
  const _BackToHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: () {
        context.router.push(const HomeRoute());
      },
      width: double.infinity,
      widget: Text(
        'Back to home',
        style: UITextStyles.semi(16),
      ),
    );
  }
}
