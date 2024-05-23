part of '../history_page.dart';


class _TripHistoryCard extends StatelessWidget {
  const _TripHistoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: UIColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0,4),
              blurRadius: 20,
              spreadRadius: 0,
              color: UIColors.blurBackground.withOpacity(0.1),
            )
          ]
      ),
      padding: const AppEdge.all16(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const _OrderCreate(),
           AppSizedBox.height16(),
          const Divider(
            height: 1,
            thickness: 1,
            color: UIColors.divider,
          ),
           AppSizedBox.height16(),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.15,
            child: const _TripProduct(),
          ),
           AppSizedBox.height12(),
          const _Total(),
           AppSizedBox.height24(),
          const Divider(
            height: 1,
            thickness: 1,
            color: UIColors.divider,
          ),
           AppSizedBox.height16(),
          const _CardRowButton()
        ],
      ),
    );
  }
}


class _OrderCreate extends StatelessWidget {
  const _OrderCreate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Order created: ',
          style: UITextStyles.regular(12).copyWith(
            color: UIColors.subText,
          ),
        ),
        Text(
          DateTime.now().toString(),
          style: UITextStyles.regular(12),
        ),
      ],
    );
  }
}

class _TripProduct extends StatelessWidget {
  const _TripProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: const AppImage.asset(
            asset: 'img_product',
            width: 50,
            height: 50,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
         AppSizedBox.width8(),
        Text(
          'Sightseeing Vung Tau seaport',
          style: UITextStyles.regular(13),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _Total extends StatelessWidget {
  const _Total({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Total: ',
          style: UITextStyles.regular(16),
        ),
        Text(
          '\$300.00',
          style: UITextStyles.medium(18),
        ),
      ],
    );
  }
}

class _CardRowButton extends StatelessWidget {
  const _CardRowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PrimaryButton(
          onPressed: () {},
          height: 40,
          padding: const AppEdge.custom(
            top: 4,
            bottom: 4,
            right: 12,
            left: 12,
          ),
          buttonColor: UIColors.primaryColor,
          widget: Row(
            children: [
              const AppImage.asset(asset: 'ic_eye',width: 20,height: 20,color: UIColors.defaultText,),
               AppSizedBox.width8(),
              Text(
                'View detail',
                style: UITextStyles.semi(12).copyWith(
                  color: UIColors.defaultText,
                ),
              )
            ],
          ),
        ),
         AppSizedBox.width8(),
        PrimaryButton(
          height: 40,
          onPressed: () {},
          buttonColor: UIColors.gray.withOpacity(0.3),
          padding: const AppEdge.custom(
            top: 4,
            bottom: 4,
            right: 12,
            left: 12,
          ),
          widget: Row(
            children: [
              const AppImage.asset(asset: 'ic_call', width: 20,height: 20,),
               AppSizedBox.width8(),
              Text(
                'Contact',
                style: UITextStyles.semi(12).copyWith(
                  color: UIColors.defaultText,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
