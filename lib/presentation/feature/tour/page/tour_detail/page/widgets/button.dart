part of '../tour_detail_page.dart';


class _Button extends StatelessWidget {
  const _Button({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppSplashButton(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: UIColors.primaryColor,
          ),
        ),
        padding: const AppEdge.all8(),
        child: Row(
          children: [
            AppImage.asset(
              asset: icon,
              height: 20,
              width: 20,
            ),
             AppSizedBox.width8(),
            Text(
              title,
              style: UITextStyles.bold(13).copyWith(
                color: UIColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: UIColors.gray.withOpacity(0.5),
      ),
      margin: const AppEdge.all16(),
      child: const BackButton(),
    );
  }
}


class _BottomButton extends StatelessWidget {
  const _BottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const _ScheduleBottomSheet();
                },
                isScrollControlled: true,
                useSafeArea: true,
              );
            },
            width: double.infinity,
            buttonColor: UIColors.gray.withOpacity(0.2),
            widget: Text(
              'Schedule',
              style: UITextStyles.semi(16),
            ),
          ),
        ),
         AppSizedBox.width12(),
        Expanded(
          child: PrimaryButton(
            onPressed: () {},
            width: double.infinity,
            buttonColor: UIColors.primaryColor,
            widget: Text(
              'Book now',
              style: UITextStyles.semi(16),
            ),
          ),
        ),
      ],
    );
  }
}

