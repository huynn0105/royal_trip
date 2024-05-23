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
           AppSizedBox.height16(),
          const UITextFieldOutline(
            hintText: 'First name',
          ),
           AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Last name',
          ),
           AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Contact method',
          ),
           AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Email',
          ),
           AppSizedBox.height8(),
          const UITextFieldOutline(
            hintText: 'Mobile number',
          ),
           AppSizedBox.height8(),
        ],
      ),
    );
  }
}
