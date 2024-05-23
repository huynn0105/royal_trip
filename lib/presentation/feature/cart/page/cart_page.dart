import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_bar_list_view.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_shadow.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';

part 'widgets/button.dart';
part 'widgets/cart_item.dart';
part 'widgets/check_box.dart';
part 'widgets/sub_total.dart';
part 'widgets/trip_title.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBarListView(
        title: 'Cart',
        children: [
          const _SelectAllButton(),
           AppSizedBox.height16(),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return const _CartItem();
            },
            separatorBuilder: (_, __) =>  AppSizedBox.height16(),
            itemCount: 3,
          ),
           AppSizedBox.height(52),
        ],
      ),
      bottomNavigationBar: const _ProcessOrderButton(),
    );
  }
}
