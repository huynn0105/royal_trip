import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/common/app_bar_list_view.dart';

part 'widgets/trip_history_item.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarListView(
        title: 'History',
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, __) {
              return const _TripHistoryCard();
            },
            itemCount: 5,
            separatorBuilder: (_, __) =>  AppSizedBox.height16(),
          ),
           AppSizedBox.height(50),
        ],
      ),
    );
  }
}
