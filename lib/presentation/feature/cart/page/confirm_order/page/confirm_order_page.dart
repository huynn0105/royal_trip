import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royal_trip/presentation/common/app_bar_list_view.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_shadow.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textfield.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';

part 'widget/payment_method.dart';
part 'widget/contact_info.dart';
part 'widget/voucher.dart';
part 'widget/sub_total.dart';

@RoutePage()
class ConfirmOrderPage extends StatelessWidget {
  const ConfirmOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppBarListView(
        title: 'Confirm order',
        children: [
          _ContactInformation(),
          AppSizedBox.height16(),
          _Voucher(),
          AppSizedBox.height16(),
          _PaymentMethod(),
          AppSizedBox.height32(),
        ],
      ),
      bottomNavigationBar: _Subtotal(),
    );
  }
}
