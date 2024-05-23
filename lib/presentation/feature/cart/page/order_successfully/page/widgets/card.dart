part of '../order_successfully_page.dart';
class _CardTitle extends StatelessWidget {
  const _CardTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: UIColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: const AppEdge.horizontal16(),
      margin: const AppEdge.custom(
        top: 16,
        right: 16,
        left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSizedBox.height16(),
          Text(
            'Order information',
            style: UITextStyles.semi(16),
          ),
          Text(
            'Save or check email',
            style: UITextStyles.regular(14).copyWith(
              color: UIColors.subText,
            ),
          ),
        ],
      ),);
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: UIColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      padding: const AppEdge.horizontal16(),
      margin: const AppEdge.custom(
        bottom: 16,
        right: 16,
        left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order information',
            style: UITextStyles.semi(16),
          ),
          Text(
            'Save or check email',
            style: UITextStyles.regular(14).copyWith(
              color: UIColors.subText,
            ),
          ),
           AppSizedBox.height16(),
           AppSizedBox.height16(),
          const _InfoItem(
            title: 'Name',
            value: 'Vung Tau Seeing',
          ),
           AppSizedBox.height12(),
          _InfoItem(
            title: 'Date',
            value: DateTime.now().toString(),
          ),
           AppSizedBox.height12(),
          const _InfoItem(
            title: 'Name',
            value: 'Value',
          ),
           AppSizedBox.height12(),
          const _InfoItem(
            title: 'Name',
            value: 'Value',
          ),
           AppSizedBox.height12(),
          const _InfoItem(
            title: 'Name',
            value: 'Value',
          ),
           AppSizedBox.height16(),
          const Divider(
            thickness: 1,
            height: 1,
            color: UIColors.divider,
          ),
           AppSizedBox.height16(),
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
                style: UITextStyles.medium(14),
              ),
            ],
          ),
           AppSizedBox.height16(),
        ],
      ),
    );
  }
}


class _InfoItem extends StatelessWidget {
  const _InfoItem({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: UITextStyles.regular(14).copyWith(
            color: UIColors.subText,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: UITextStyles.regular(14).copyWith(
            color: UIColors.subText,
          ),
        ),
      ],
    );
  }
}
