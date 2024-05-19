import 'package:auto_route/auto_route.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
part 'widgets/tour_item.dart';
part 'widgets/tour_content.dart';
part 'widgets/button.dart';
part 'widgets/schedule_bottom_sheet.dart';
@RoutePage()
class TourDetailPage extends StatelessWidget {
  const TourDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                AppImage.asset(
                  asset: 'img_product',
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).width - const AppSizedBox.height32().height!,
                ),
                const AppSizedBox.height8(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) => const AppImage.asset(
                      asset: 'img_product',
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
                const Padding(
                  padding: AppEdge.all16(),
                  child: _TourContent(),
                )
              ],
            ),
            const _BackButton(),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: AppEdge.all16(),
        child: _BottomButton(),
      ),
    );
  }
}
