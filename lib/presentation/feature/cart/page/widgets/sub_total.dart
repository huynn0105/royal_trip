part of '../cart_page.dart';

class _SubTotal extends StatelessWidget {
  const _SubTotal({
    super.key,
    required this.value,
  });
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Subtotal:',
          style: UITextStyles.regular(14),
        ),
        Text(
          '$valueđ',
          style: UITextStyles.regular(14),
        )
      ],
    );
  }
}
