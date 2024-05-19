part of '../confirm_order_page.dart';


class _ContactInformation extends StatelessWidget {
  const _ContactInformation({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact information',
            style: UITextStyles.medium(14),
          ),
          const AppSizedBox.height16(),
          const UITextFieldOutline(
            hintText: 'First name',
          ),
          const AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Last name',
          ),
          const AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Contact method',
          ),
          const AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Email',
          ),
          const AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Mobile number',
          ),
          const AppSizedBox.height8(),
        ],
      ),
    );
  }
}
