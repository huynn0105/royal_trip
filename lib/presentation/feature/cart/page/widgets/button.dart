part of '../cart_page.dart';

class _SelectAllButton extends StatelessWidget {
  const _SelectAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: UIColors.white,
        boxShadow: [
          AppShadow(),
        ],
      ),
      padding: const AppEdge.all12(),
      child: Row(
        children: [
          const _CheckBox(),
           AppSizedBox.width12(),
          Text(
            'Select all',
            style: UITextStyles.semi(14),
          ),
        ],
      ),
    );
  }
}

class _ProcessOrderButton extends StatelessWidget {
  const _ProcessOrderButton({
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
                'Sub total(2 items):',
                style: UITextStyles.regular(14).copyWith(
                  color: UIColors.subText,
                ),
              ),
              const Spacer(),
              Text(
                '\$500.00',
                style: UITextStyles.medium(16).copyWith(
                  color: UIColors.primaryColor,
                ),
              ),
            ],
          ),
           AppSizedBox.height16(),
          PrimaryButton(
            onPressed: () {
              context.router.push(const ConfirmOrderRoute());
            },
            width: double.infinity,
            widget: Text(
              'Process to order',
              style: UITextStyles.semi(16),
            ),
          )
        ],
      ),
    );
  }
}
