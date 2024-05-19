part of '../cart_page.dart';

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xFFDDDDE3),
        ),
        borderRadius: BorderRadius.circular(4),
        color: UIColors.backgroundColor,
      ),
    );
  }
}
