part of '../confirm_order_page.dart';


class _PaymentMethod extends StatelessWidget {
  const _PaymentMethod({
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
                    'Payment method',
                    style: UITextStyles.medium(14),
                  ),
                  Text(
                    'Choose method to payment',
                    style: UITextStyles.regular(12),
                  ),
                ],
              ),
              const Spacer(),
              AppSplashButton(
                child: Text(
                  'Add new',
                  style: UITextStyles.regular(14).copyWith(
                    color: UIColors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: const AppEdge.vertical16(),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final paymentMethod = PaymentMethodEnum.values[index];
              return _PaymentMethodItem(
                title: paymentMethod.title,
                icon: paymentMethod.icon,
                active: index == 0,
                isEdit: paymentMethod.isEdit,
              );
            },
            separatorBuilder: (_, __) => const AppSizedBox.height12(),
            itemCount: PaymentMethodEnum.values.length,
          ),
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

enum PaymentMethodEnum {
  visa(icon: 'ic_visa', title: 'Visa ending in 1234', isEdit: true),
  applePay(
    icon: 'ic_apple_pay',
    title: 'Apple Pay',
  ),
  momo(icon: 'ic_momo', title: 'Momo');

  final String icon;
  final String title;
  final bool isEdit;
  const PaymentMethodEnum({
    required this.icon,
    required this.title,
    this.isEdit = false,
  });
}

class _PaymentMethodItem extends StatelessWidget {
  const _PaymentMethodItem({
    super.key,
    required this.title,
    required this.icon,
    required this.active,
    this.isEdit = false,
  });

  final String icon;
  final String title;
  final bool active;
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: active ? UIColors.blue : UIColors.gray,
        ),
      ),
      height: 70,
      padding: const AppEdge.horizontal16(),
      child: Row(
        children: [
          AppImage.asset(
            asset: icon,
            height: 32,
          ),
          const AppSizedBox.width12(),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: UITextStyles.semi(14),
                ),
                if (isEdit)
                  Text(
                    'Edit',
                    style: UITextStyles.semi(12).copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
              ],
            ),
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: active
                  ? Border.all(
                width: 6,
                color: UIColors.blue,
              )
                  : Border.all(width: 1, color: UIColors.gray),
              color: active ? UIColors.white : UIColors.gray.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
