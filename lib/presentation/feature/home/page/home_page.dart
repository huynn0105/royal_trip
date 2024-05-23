import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:royal_trip/presentation/common/app_edge.dart';
import 'package:royal_trip/presentation/common/app_sizebox.dart';
import 'package:royal_trip/presentation/common/buttons.dart';
import 'package:royal_trip/presentation/common/colors.dart';
import 'package:royal_trip/presentation/common/images.dart';
import 'package:royal_trip/presentation/common/textfield.dart';
import 'package:royal_trip/presentation/common/textstyle.dart';
import 'package:royal_trip/presentation/routes/routes.gr.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part 'widget/product_item.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: AppEdge.all16(),
              child: _Header(),
            ),
             AppSizedBox.height8(),
            Padding(
              padding: const AppEdge.horizontal16(),
              child: Text(
                'Let’t find the best tour',
                style: UITextStyles.medium(20),
              ),
            ),
             AppSizedBox.height12(),
            const Padding(
              padding: AppEdge.horizontal16(),
              child: UISearchTextField(),
            ),
             AppSizedBox.height12(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                      itemCount: 4,
                      itemBuilder: (_, index) => Padding(
                        padding: const AppEdge.horizontal16(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: AppImage.asset(
                            asset: 'banner',
                            height: MediaQuery.sizeOf(context).height * 0.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                   AppSizedBox.height8(),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: ExpandingDotsEffect(
                      activeDotColor: UIColors.primaryColor,
                      dotColor: UIColors.primaryColor.withOpacity(0.12),
                      expansionFactor: 1.8,
                      dotWidth: 12,
                      dotHeight: 12,
                    ),
                  )
                ],
              ),
            ),
             AppSizedBox.height32(),
            Padding(
              padding: const AppEdge.horizontal16(),
              child: Text(
                'Recommendation tour',
                style: UITextStyles.medium(20),
              ),
            ),
             AppSizedBox.height16(),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const AppEdge.horizontal16(),
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    TitleWithShowMore(
                      title: 'Vietnam',
                      onTap: () {
                        context.router.push(const TourRoute());
                      },
                    ),
                     AppSizedBox.height8(),
                    const _ProductItem(),
                  ],
                );
              },
              separatorBuilder: (_, __) =>  AppSizedBox.height16(),
              itemCount: 4,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.router.push(const CartRoute());
        },
        backgroundColor: UIColors.primaryColor,
        child: const Icon(Icons.shopping_cart_rounded, color: UIColors.white,),
      ),

    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryButton(
          onPressed: () {},
          title: 'Become a member',
          textColor: UIColors.defaultText,
        ),
        const AppImage.asset(
          asset: 'ic_notification',
          width: 26,
        ),
      ],
    );
  }
}
