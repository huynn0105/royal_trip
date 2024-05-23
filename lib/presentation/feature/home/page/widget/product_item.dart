part of '../home_page.dart';

class _ProductItem extends StatelessWidget {
  const _ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppSplashButton(
      onTap: () {
        context.router.push(const TourRoute());
      },
      child: Container(
        height: MediaQuery.sizeOf(context).width -  AppSizedBox.height32().height!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img_product.png'),
          ),
        ),
        padding: const AppEdge.all8(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: _HotDeal(),
            ),
            const Spacer(),
            SizedBox(
              height: MediaQuery.sizeOf(context).width / 3,
              child: const Stack(
                children: [
                  _Available(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: _TripDescription(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TripDescription extends StatelessWidget {
  const _TripDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UIColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const AppEdge.all12(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Seaport',
            style: UITextStyles.bold(16),
          ),
          Text(
            "Among them, Vietnam has 3 ports on this list including Hai Phong, Ho Chi Minh City and Cai Mep. These are all seaports that are also assessed by Lloyd's List to have good growth rates.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: UITextStyles.regular(12),
          ),
        ],
      ),
    );
  }
}

class _HotDeal extends StatelessWidget {
  const _HotDeal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UIColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const AppEdge.custom(
        top: 4,
        bottom: 4,
        right: 12,
        left: 12,
      ),
      child: Text(
        'Hot deal',
        style: UITextStyles.semi(12),
      ),
    );
  }
}

class _Available extends StatelessWidget {
  const _Available({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: UIColors.lightOrange,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      padding: const AppEdge.custom(
        left: 12,
        right: 12,
        top: 6,
        bottom: 6,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '5',
            style: UITextStyles.medium(16),
          ),
          Text(
            'tours available',
            style: UITextStyles.semi(14),
          ),
        ],
      ),
    );
  }
}

class TitleWithShowMore extends StatelessWidget {
  const TitleWithShowMore({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: UITextStyles.medium(18),
          ),
        ),
        AppSplashButton(
          onTap: onTap,
          child: Text(
            'Show more',
            style: UITextStyles.semi(14).copyWith(color: UIColors.primaryColor, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
