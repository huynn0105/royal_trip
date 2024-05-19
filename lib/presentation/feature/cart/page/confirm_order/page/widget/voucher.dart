part of '../confirm_order_page.dart';


class _Voucher extends StatelessWidget {
  const _Voucher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          AppShadow(),
        ],
        color: UIColors.white,
      ),
      padding: const AppEdge.all16(),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voucher',
                    style: UITextStyles.medium(14),
                  ),
                  Text(
                    '14 vouchers available',
                    style: UITextStyles.regular(12),
                  ),
                ],
              ),
              const Spacer(),
              AppSplashButton(
                child: Text(
                  'Select voucher',
                  style: UITextStyles.regular(14).copyWith(
                    color: UIColors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          const AppSizedBox.height16(),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Credit',
                    style: UITextStyles.medium(14),
                  ),
                  Text(
                    'Use 500 credit ~ \$25',
                    style: UITextStyles.regular(12),
                  ),
                ],
              ),
              const Spacer(),
              CupertinoSwitch(
                value: true,
                activeColor: UIColors.primaryColor,
                onChanged: (value) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
