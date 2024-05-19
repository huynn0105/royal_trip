part of '../cart_page.dart';

class _CartItem extends StatelessWidget {
  const _CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: UIColors.white,
        boxShadow: [
          AppShadow(),
        ],
      ),
      padding: const AppEdge.all16(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _TripTitle(),
          const AppSizedBox.height12(),
          Column(
            children: List.generate(
              2,
                  (index) => const _Option(),
            ),
          ),
          const AppSizedBox.height8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _AddRemoveItem(
                title: 'Audit',
                value: 1,
                onAdd: () {},
                onRemove: () {},
              ),
              _AddRemoveItem(
                title: 'Child',
                value: 1,
                onAdd: () {},
                onRemove: () {},
              ),
            ],
          ),
          const AppSizedBox.height12(),
          const Divider(
            thickness: 1,
            height: 1,
            color: UIColors.divider,
          ),
          const AppSizedBox.height12(),
          Row(
            children: [
              const Expanded(
                child: _SubTotal(
                  value: '500.000',
                ),
              ),
              PrimaryButton(
                onPressed: () {},
                height: 50,
                widget: Text(
                  'Edit',
                  style: UITextStyles.regular(14),
                ),
                buttonColor: UIColors.primaryColor,
              ),
              const AppSizedBox.width8(),
              PrimaryButton(
                onPressed: () {},
                height: 50,
                widget: Text(
                  'Remove',
                  style: UITextStyles.regular(14),
                ),
                buttonColor: UIColors.gray.withOpacity(0.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class _AddRemoveItem extends StatelessWidget {
  const _AddRemoveItem({
    super.key,
    required this.title,
    required this.value,
    this.onRemove,
    this.onAdd,
  });

  final String title;
  final int value;
  final VoidCallback? onRemove;
  final VoidCallback? onAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: UITextStyles.regular(14),
        ),
        const AppSizedBox.height8(),
        Row(
          children: [
            AppSplashButton(
              onTap: onRemove,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: UIColors.gray.withOpacity(0.3),
                child: const Icon(Icons.remove),
              ),
            ),
            SizedBox(
              width: 50,
              child: Center(
                child: Text(
                  '$value',
                  style: UITextStyles.regular(14),
                ),
              ),
            ),
            AppSplashButton(
              onTap: onAdd,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: UIColors.gray.withOpacity(0.3),
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class _Option extends StatelessWidget {
  const _Option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppSizedBox.width8(),
        const Icon(
          Icons.circle,
          size: 8,
        ),
        const AppSizedBox.width8(),
        Text(
          'Hotel',
          style: UITextStyles.regular(14),
        )
      ],
    );
  }
}