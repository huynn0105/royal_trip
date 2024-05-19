import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';

class AppBarListView extends StatelessWidget {
  const AppBarListView({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBarBuilder(
          barHeight: 60,
          pinned: true,
          leadingActions: [
            (context, expandRatio, barHeight, overlapsContent) {
              return SizedBox(
                  height: barHeight,
                  child: BackButton(),
              );
            },
          ],
          initialContentHeight: 70,
          backgroundColorAll: Theme.of(context).scaffoldBackgroundColor,
          contentBuilder: (context, expandRatio, contentHeight, centerPadding, overlapsContent) {
            return Container(
              alignment: Alignment.centerLeft,
              height: 60,
              transform: Matrix4.translationValues(16 + (1 - expandRatio) * 30, 0, 0),
              child: Text(title, style: UITextStyles.medium(16 + expandRatio * 14)),
            );
          },
        ),
        SliverPadding(
          padding: const AppEdge.horizontal16(),
          sliver: SliverList(
            delegate: SliverChildListDelegate(children),
          ),
        )
      ],
    );
  }
}
