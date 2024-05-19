part of '../cart_page.dart';
class _TripTitle extends StatelessWidget {
  const _TripTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _CheckBox(),
        const AppSizedBox.width12(),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: const AppImage.asset(
            asset: 'img_product',
            width: 64,
            height: 64,
          ),
        ),
        const AppSizedBox.width12(),
        Expanded(
          child: Text(
            'Sightseeing Vung Tau seaport',
            style: UITextStyles.regular(13),
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}

