part of '../tour_detail_page.dart';


class _ScheduleBottomSheet extends StatelessWidget {
  const _ScheduleBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const AppEdge.all12(),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Schedule',
                  style: UITextStyles.medium(16),
                ),
              ),
              AppSplashButton(
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.close),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
          color: UIColors.divider,
        ),
        Padding(
          padding: const AppEdge.all16(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _ScheduleItem(
                title: 'Day 1',
              ),
              const _ScheduleItem(
                title: 'Day 2',
              ),
              const _ScheduleItem(
                title: 'Day 3',
              ),
              const _ScheduleItem(
                title: 'Day 4',
              ),
              AppSplashButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Show more',
                      style: UITextStyles.semi(12),
                    ),
                    const Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _ScheduleItem extends StatelessWidget {
  const _ScheduleItem({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          const Column(
            children: [
              AppSizedBox.height(4),
              AppImage.asset(
                asset: 'ic_progress',
                height: 16,
                width: 16,
              ),
              Expanded(
                child: DottedLine(
                  dashColor: UIColors.primaryColor,
                  direction: Axis.vertical,
                  dashLength: 8,
                  lineThickness: 2,
                ),
              ),
            ],
          ),
          const AppSizedBox.width12(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: UITextStyles.semi(16),
                ),
                const AppSizedBox.height5(),
                Text(
                  'The International Medical, Hospital & Pharmaceutical In Hanoi',
                  maxLines: 2,
                  style: UITextStyles.regular(14),
                ),
                Text(
                  '10 - 20.01.2024',
                  maxLines: 2,
                  style: UITextStyles.regular(14).copyWith(
                    color: UIColors.subText,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}