part of '../confirm_order_page.dart';


class _Subtotal extends StatelessWidget {
  const _Subtotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: UIColors.white,
      ),
      padding: const AppEdge.all16(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                'Sub total',
                style: UITextStyles.regular(14).copyWith(
                  color: UIColors.subText,
                ),
              ),
              const Spacer(),
              Text(
                '\$500.00',
                style: UITextStyles.medium(14),
              ),
            ],
          ),
          const AppSizedBox.height12(),
          Row(
            children: [
              Text(
                'Promotion',
                style: UITextStyles.regular(14).copyWith(
                  color: UIColors.subText,
                ),
              ),
              const Spacer(),
              Text(
                '\$25.00',
                style: UITextStyles.medium(14),
              ),
              const Icon(Icons.keyboard_arrow_down_sharp)
            ],
          ),
          const AppSizedBox.height12(),
          Row(
            children: [
              Text(
                'Total',
                style: UITextStyles.regular(14).copyWith(
                  color: UIColors.subText,
                ),
              ),
              const Spacer(),
              Text(
                '\$475.00',
                style: UITextStyles.medium(14).copyWith(
                  color: UIColors.primaryColor,
                ),
              ),
            ],
          ),
          const AppSizedBox.height16(),
          PrimaryButton(
            onPressed: () {
              context.router.push(const OrderSuccessfullyRoute());
            },
            width: double.infinity,
            widget: Text(
              'Go to payment',
              style: UITextStyles.semi(16),
            ),
          )
        ],
      ),
    );
  }
}
