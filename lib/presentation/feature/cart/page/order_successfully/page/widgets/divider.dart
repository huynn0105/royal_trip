part of '../order_successfully_page.dart';

class _Divider extends StatelessWidget {
  const _Divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UIColors.white,
      child: Row(
        children: [
          Container(
            width: 32,
            height: 42,
            decoration: const BoxDecoration(
              color: UIColors.backgroundColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
          ),
          const Expanded(
            child: DottedLine(
              direction: Axis.horizontal,
              dashColor: UIColors.gray,
            ),
          ),
          Container(
            width: 32,
            height: 42,
            decoration: const BoxDecoration(
              color: UIColors.backgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                topLeft: Radius.circular(32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
