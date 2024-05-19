part of '../personal_detail_page.dart';


class _TitleDetail extends StatelessWidget {
  const _TitleDetail({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: UITextStyles.semi(14),
        ),
        const AppSizedBox.height5(),
        Text(
          description,
          style: UITextStyles.regular(12),
        ),
      ],
    );
  }
}
